.class final Landroid/database/QueryWrapper$1;
.super Landroid/util/LruCache;
.source "QueryWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/database/QueryWrapper;->getInstance(Landroid/database/sqlite/SQLiteDatabase;I)Landroid/database/QueryWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/LruCache",
        "<",
        "Ljava/lang/String;",
        "Landroid/database/QueryWrapper$QueryObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$mDb:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method constructor <init>(ILandroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter "x0"
    .parameter

    .prologue
    .line 98
    iput-object p2, p0, Landroid/database/QueryWrapper$1;->val$mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {p0, p1}, Landroid/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 98
    check-cast p2, Ljava/lang/String;

    .end local p2
    check-cast p3, Landroid/database/QueryWrapper$QueryObject;

    .end local p3
    check-cast p4, Landroid/database/QueryWrapper$QueryObject;

    .end local p4
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/database/QueryWrapper$1;->entryRemoved(ZLjava/lang/String;Landroid/database/QueryWrapper$QueryObject;Landroid/database/QueryWrapper$QueryObject;)V

    return-void
.end method

.method protected entryRemoved(ZLjava/lang/String;Landroid/database/QueryWrapper$QueryObject;Landroid/database/QueryWrapper$QueryObject;)V
    .locals 3
    .parameter "evicted"
    .parameter "key"
    .parameter "oldValue"
    .parameter "newValue"

    .prologue
    .line 100
    invoke-virtual {p3}, Landroid/database/QueryWrapper$QueryObject;->getMemTableName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    iget-object v0, p0, Landroid/database/QueryWrapper$1;->val$mDb:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Drop Table IF EXISTS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Landroid/database/QueryWrapper$QueryObject;->getMemTableName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 102
    const-string v0, "QueryWrapper"

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    const-string v0, "QueryWrapper"

    const-string v1, "Memorytable is droped because exceed max managing size or release QueryWrapper"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :cond_0
    return-void
.end method
