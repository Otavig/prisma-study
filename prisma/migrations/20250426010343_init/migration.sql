/*
  Warnings:

  - You are about to drop the `Route` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropTable
PRAGMA foreign_keys=off;
DROP TABLE "Route";
PRAGMA foreign_keys=on;

-- CreateTable
CREATE TABLE "Routes" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "url_generate" TEXT NOT NULL,
    "url_send" TEXT NOT NULL,
    "day_generate" INTEGER NOT NULL
);
