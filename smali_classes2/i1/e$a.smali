.class public Li1/e$a;
.super Landroidx/room/SharedSQLiteStatement;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Li1/e;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Li1/e;


# direct methods
.method public constructor <init>(Li1/e;Landroidx/room/RoomDatabase;)V
    .locals 0

    iput-object p1, p0, Li1/e$a;->a:Li1/e;

    invoke-direct {p0, p2}, Landroidx/room/SharedSQLiteStatement;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR REPLACE INTO graph_sync(docUUID, commandType, requestedServerTimestamp, msAccountId, msDocumentId) VALUES(?, ?, ?, ?, ?) "

    return-object v0
.end method
