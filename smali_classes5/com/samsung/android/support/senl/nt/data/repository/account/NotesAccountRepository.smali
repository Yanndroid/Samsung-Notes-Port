.class public Lcom/samsung/android/support/senl/nt/data/repository/account/NotesAccountRepository;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mNotesAccountDAO:Lcom/samsung/android/support/senl/nt/data/database/core/account/dao/NotesAccountDAO;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "NotesAccountRepository"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/data/common/log/DataLogger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/data/repository/account/NotesAccountRepository;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;->notesAccountDAO()Lcom/samsung/android/support/senl/nt/data/database/core/account/dao/NotesAccountDAO;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/repository/account/NotesAccountRepository;->mNotesAccountDAO:Lcom/samsung/android/support/senl/nt/data/database/core/account/dao/NotesAccountDAO;

    return-void
.end method


# virtual methods
.method public changePrimaryAccount(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/repository/account/NotesAccountRepository;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changePrimaryAccount, accountGuid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/account/NotesAccountRepository;->mNotesAccountDAO:Lcom/samsung/android/support/senl/nt/data/database/core/account/dao/NotesAccountDAO;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/account/dao/NotesAccountDAO;->changePrimaryAccount(Ljava/lang/String;)V

    return-void
.end method

.method public getAccount(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/account/entity/NotesAccountEntity;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/repository/account/NotesAccountRepository;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAccount, accountGuid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/account/NotesAccountRepository;->mNotesAccountDAO:Lcom/samsung/android/support/senl/nt/data/database/core/account/dao/NotesAccountDAO;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/account/dao/NotesAccountDAO;->getAccount(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/account/entity/NotesAccountEntity;

    move-result-object p1

    return-object p1
.end method

.method public getAccountName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/repository/account/NotesAccountRepository;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAccountName, accountGuid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/account/NotesAccountRepository;->mNotesAccountDAO:Lcom/samsung/android/support/senl/nt/data/database/core/account/dao/NotesAccountDAO;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/account/dao/NotesAccountDAO;->getAccountName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getAccountType(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/repository/account/NotesAccountRepository;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAccountType, accountGuid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/account/NotesAccountRepository;->mNotesAccountDAO:Lcom/samsung/android/support/senl/nt/data/database/core/account/dao/NotesAccountDAO;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/account/dao/NotesAccountDAO;->getAccountType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getPrimaryAccount()Lcom/samsung/android/support/senl/nt/data/database/core/account/entity/NotesAccountEntity;
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/repository/account/NotesAccountRepository;->TAG:Ljava/lang/String;

    const-string v1, "getPrimaryAccount"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/account/NotesAccountRepository;->mNotesAccountDAO:Lcom/samsung/android/support/senl/nt/data/database/core/account/dao/NotesAccountDAO;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/account/dao/NotesAccountDAO;->getPrimaryAccount()Lcom/samsung/android/support/senl/nt/data/database/core/account/entity/NotesAccountEntity;

    move-result-object v0

    return-object v0
.end method

.method public getPrimaryAccountGuid()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/repository/account/NotesAccountRepository;->TAG:Ljava/lang/String;

    const-string v1, "getPrimaryAccountGuid"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/account/NotesAccountRepository;->mNotesAccountDAO:Lcom/samsung/android/support/senl/nt/data/database/core/account/dao/NotesAccountDAO;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/account/dao/NotesAccountDAO;->getPrimaryAccountGuid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrimaryAccountName()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/repository/account/NotesAccountRepository;->TAG:Ljava/lang/String;

    const-string v1, "getPrimaryAccountName"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/account/NotesAccountRepository;->mNotesAccountDAO:Lcom/samsung/android/support/senl/nt/data/database/core/account/dao/NotesAccountDAO;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/account/dao/NotesAccountDAO;->getPrimaryAccountName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrimaryAccountType()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/repository/account/NotesAccountRepository;->TAG:Ljava/lang/String;

    const-string v1, "getPrimaryAccountType"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/account/NotesAccountRepository;->mNotesAccountDAO:Lcom/samsung/android/support/senl/nt/data/database/core/account/dao/NotesAccountDAO;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/account/dao/NotesAccountDAO;->getPrimaryAccountType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public insertPrimaryAccount(Lcom/samsung/android/support/senl/nt/data/database/core/account/entity/NotesAccountEntity;)V
    .locals 3
    .param p1    # Lcom/samsung/android/support/senl/nt/data/database/core/account/entity/NotesAccountEntity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/repository/account/NotesAccountRepository;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insertPrimaryAccount, accountEntity : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/account/NotesAccountRepository;->mNotesAccountDAO:Lcom/samsung/android/support/senl/nt/data/database/core/account/dao/NotesAccountDAO;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/account/dao/NotesAccountDAO;->insertPrimaryAccount(Lcom/samsung/android/support/senl/nt/data/database/core/account/entity/NotesAccountEntity;)V

    return-void
.end method
