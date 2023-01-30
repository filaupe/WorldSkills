using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace MPT01SEv1.Forms.Migrations
{
    /// <inheritdoc />
    public partial class alterinfra : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<DateTime>(
                name: "admissionDate",
                table: "Employees",
                type: "datetime2",
                nullable: false,
                defaultValue: new DateTime(1, 1, 1, 0, 0, 0, 0, DateTimeKind.Unspecified));

            migrationBuilder.AddColumn<DateTime>(
                name: "bornDate",
                table: "Employees",
                type: "datetime2",
                nullable: false,
                defaultValue: new DateTime(1, 1, 1, 0, 0, 0, 0, DateTimeKind.Unspecified));

            migrationBuilder.AddColumn<int>(
                name: "loginCount",
                table: "Employees",
                type: "int",
                nullable: false,
                defaultValue: 0);
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "admissionDate",
                table: "Employees");

            migrationBuilder.DropColumn(
                name: "bornDate",
                table: "Employees");

            migrationBuilder.DropColumn(
                name: "loginCount",
                table: "Employees");
        }
    }
}
