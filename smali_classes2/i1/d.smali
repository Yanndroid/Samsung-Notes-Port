.class public abstract Li1/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/room/Dao;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM graph_sync"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Li1/f;",
            ">;"
        }
    .end annotation
.end method

.method public abstract b(Ljava/lang/String;I)Ljava/lang/String;
    .annotation build Landroidx/room/Query;
        value = "SELECT msDocumentId FROM graph_sync WHERE docUuid =:docUuid AND commandType = :commandType LIMIT 1"
    .end annotation
.end method

.method public abstract c()I
    .annotation build Landroidx/room/Query;
        value = "SELECT COUNT(docUuid) FROM graph_sync"
    .end annotation
.end method

.method public abstract d(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/room/Query;
        value = "INSERT OR REPLACE INTO graph_sync(docUUID, commandType, requestedServerTimestamp, msAccountId, msDocumentId) VALUES(:documentUuid, :commandType, :serverTimestamp, :msAccountId, :msDocumentId) "
    .end annotation
.end method

.method public abstract e(Ljava/lang/String;I)V
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM graph_sync WHERE docUuid =:documentUuid AND commandType =:commandType"
    .end annotation
.end method
