using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace MPT01SEv1.Forms.Migrations
{
    /// <inheritdoc />
    public partial class InfraFunc : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "Employees",
                columns: table => new
                {
                    empid = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    mgrid = table.Column<int>(type: "int", nullable: true),
                    empname = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    salary = table.Column<decimal>(type: "decimal(18,2)", nullable: false),
                    depid = table.Column<int>(type: "int", nullable: false),
                    deptname = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    deptmgrid = table.Column<int>(type: "int", nullable: true),
                    bornDate = table.Column<DateTime>(type: "datetime2", nullable: false),
                    admissionDate = table.Column<DateTime>(type: "datetime2", nullable: false),
                    loginCount = table.Column<int>(type: "int", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Employees", x => x.empid);
                });
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "Employees");
        }
    }
}
