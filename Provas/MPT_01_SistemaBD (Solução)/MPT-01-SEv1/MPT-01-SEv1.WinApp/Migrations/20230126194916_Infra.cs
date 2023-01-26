using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace MPT01SEv1.WinApp.Migrations
{
    /// <inheritdoc />
    public partial class Infra : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "Funcionarios",
                columns: table => new
                {
                    empid = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    mgrid = table.Column<int>(type: "int", nullable: true),
                    empname = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    salary = table.Column<double>(type: "float", nullable: false),
                    depid = table.Column<int>(type: "int", nullable: true),
                    deptname = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    deptmgrid = table.Column<int>(type: "int", nullable: true),
                    gerente = table.Column<bool>(type: "bit", nullable: false),
                    dataNascimento = table.Column<DateTime>(type: "datetime2", nullable: false),
                    dataAdmissao = table.Column<DateTime>(type: "datetime2", nullable: false),
                    VezesNoSistema = table.Column<int>(type: "int", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Funcionarios", x => x.empid);
                    table.ForeignKey(
                        name: "FK_Funcionarios_Funcionarios_mgrid",
                        column: x => x.mgrid,
                        principalTable: "Funcionarios",
                        principalColumn: "empid");
                });

            migrationBuilder.CreateTable(
                name: "Departamentos",
                columns: table => new
                {
                    depid = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    deptmgrid = table.Column<int>(type: "int", nullable: true),
                    name = table.Column<string>(type: "nvarchar(max)", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Departamentos", x => x.depid);
                    table.ForeignKey(
                        name: "FK_Departamentos_Funcionarios_deptmgrid",
                        column: x => x.deptmgrid,
                        principalTable: "Funcionarios",
                        principalColumn: "empid");
                });

            migrationBuilder.CreateIndex(
                name: "IX_Departamentos_deptmgrid",
                table: "Departamentos",
                column: "deptmgrid",
                unique: true,
                filter: "[deptmgrid] IS NOT NULL");

            migrationBuilder.CreateIndex(
                name: "IX_Funcionarios_mgrid",
                table: "Funcionarios",
                column: "mgrid");
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "Departamentos");

            migrationBuilder.DropTable(
                name: "Funcionarios");
        }
    }
}
