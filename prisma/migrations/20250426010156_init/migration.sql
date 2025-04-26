-- CreateTable
CREATE TABLE "Route" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "url_generate" TEXT NOT NULL,
    "url_send" TEXT NOT NULL,
    "day_generate" INTEGER NOT NULL
);
