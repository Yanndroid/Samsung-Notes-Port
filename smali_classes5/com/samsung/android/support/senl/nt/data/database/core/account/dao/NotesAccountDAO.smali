.class public abstract Lcom/samsung/android/support/senl/nt/data/database/core/account/dao/NotesAccountDAO;
.super Lcom/samsung/android/support/senl/nt/data/database/core/dao/BaseDao;
.source "SourceFile"


# annotations
.annotation build Landroidx/room/Dao;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/support/senl/nt/data/database/core/dao/BaseDao<",
        "Lcom/samsung/android/support/senl/nt/data/database/core/account/entity/NotesAccountEntity;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/dao/BaseDao;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract changePrimaryAccount(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/room/Query;
        value = "UPDATE OR ABORT account SET primaryAccount=(accountGuid=:accountGuid)"
    .end annotation
.end method

.method public abstract getAccount(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/account/entity/NotesAccountEntity;
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM account WHERE accountGuid=:accountGuid ORDER BY _id DESC LIMIT 1"
    .end annotation
.end method

.method public abstract getAccountName(Ljava/lang/String;)Ljava/lang/String;
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/room/Query;
        value = "SELECT accountName FROM account WHERE accountGuid=:accountGuid ORDER BY _id DESC LIMIT 1"
    .end annotation
.end method

.method public abstract getAccountType(Ljava/lang/String;)Ljava/lang/String;
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/room/Query;
        value = "SELECT accountType FROM account WHERE accountGuid=:accountGuid ORDER BY _id DESC LIMIT 1"
    .end annotation
.end method

.method public abstract getEntity(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/account/entity/NotesAccountEntity;
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM account WHERE accountGuid=:accountGuid ORDER BY _id DESC LIMIT 1"
    .end annotation
.end method

.method public bridge synthetic getEntity(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM account WHERE accountGuid=:accountGuid ORDER BY _id DESC LIMIT 1"
    .end annotation

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/account/dao/NotesAccountDAO;->getEntity(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/account/entity/NotesAccountEntity;

    move-result-object p1

    return-object p1
.end method

.method public abstract getPrimaryAccount()Lcom/samsung/android/support/senl/nt/data/database/core/account/entity/NotesAccountEntity;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM account WHERE primaryAccount IS 1 ORDER BY _id DESC LIMIT 1"
    .end annotation
.end method

.method public abstract getPrimaryAccountGuid()Ljava/lang/String;
    .annotation build Landroidx/room/Query;
        value = "SELECT accountGuid FROM account WHERE primaryAccount IS 1 ORDER BY _id DESC LIMIT 1"
    .end annotation
.end method

.method public abstract getPrimaryAccountName()Ljava/lang/String;
    .annotation build Landroidx/room/Query;
        value = "SELECT accountName FROM account WHERE primaryAccount IS 1 ORDER BY _id DESC LIMIT 1"
    .end annotation
.end method

.method public abstract getPrimaryAccountType()Ljava/lang/String;
    .annotation build Landroidx/room/Query;
        value = "SELECT accountType FROM account WHERE primaryAccount IS 1 ORDER BY _id DESC LIMIT 1"
    .end annotation
.end method

.method public insertPrimaryAccount(Lcom/samsung/android/support/senl/nt/data/database/core/account/entity/NotesAccountEntity;)V
    .locals 0
    .param p1    # Lcom/samsung/android/support/senl/nt/data/database/core/account/entity/NotesAccountEntity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/room/Transaction;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/dao/BaseDao;->upsert(Ljava/lang/Object;)Landroid/util/Pair;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/account/entity/NotesAccountEntity;->getAccountGuid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/account/dao/NotesAccountDAO;->changePrimaryAccount(Ljava/lang/String;)V

    return-void
.end method
