.class public Lcom/samsung/android/support/senl/nt/app/lock/strategy/VerifyWithMultiAccountStrategy;
.super Lcom/samsung/android/support/senl/nt/app/lock/strategy/VerifyStrategy;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDocEntity:Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "VerifyWithMultiAccountStrategy"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/lock/utils/LockLogger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/app/lock/strategy/VerifyWithMultiAccountStrategy;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/lock/strategy/VerifyStrategy;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/strategy/VerifyWithMultiAccountStrategy;->mDocEntity:Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    return-void
.end method

.method private unlock(Landroid/content/Context;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/strategy/VerifyWithMultiAccountStrategy;->mDocEntity:Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/data/resolver/lock/DocumentLockResolver;->unlock(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/lock/strategy/VerifyWithMultiAccountStrategy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unlock# unlockSuccess : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private verifyAccount(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    invoke-static {p3}, Lcom/samsung/android/support/senl/cm/base/common/util/HashUtils;->isHashed(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p3}, Lcom/samsung/android/support/senl/cm/base/common/util/HashUtils;->generateSha256(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    :cond_0
    sget-object v0, Lcom/samsung/android/support/senl/nt/app/lock/strategy/VerifyWithMultiAccountStrategy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "verifyAccount : uuid("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "), account("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, p2, p3}, Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockManagerStrategyUtils;->isNoteOwner(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public onActivityResult(Landroidx/appcompat/app/AppCompatActivity;IILandroid/content/Intent;)Z
    .locals 4

    invoke-super {p0, p1, p2, p3, p4}, Lcom/samsung/android/support/senl/nt/app/lock/strategy/VerifyStrategy;->onActivityResult(Landroidx/appcompat/app/AppCompatActivity;IILandroid/content/Intent;)Z

    const/4 v0, 0x0

    const/16 v1, 0x3f8

    if-eq p2, v1, :cond_0

    return v0

    :cond_0
    sget-object v1, Lcom/samsung/android/support/senl/nt/app/lock/strategy/VerifyWithMultiAccountStrategy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onActivityResult : requestCode("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "), resultCode("

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, -0x1

    if-ne p3, p2, :cond_4

    if-eqz p4, :cond_3

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/lock/strategy/VerifyWithMultiAccountStrategy;->mDocEntity:Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getUuid()Ljava/lang/String;

    move-result-object p2

    sget-object p3, Lcom/samsung/android/support/senl/nt/app/account/SamsungAccountLoginForLockActivity;->SAMSUNG_ACCOUNT_USER_ID:Ljava/lang/String;

    invoke-virtual {p4, p3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/app/lock/strategy/VerifyWithMultiAccountStrategy;->verifyAccount(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/lock/strategy/VerifyWithMultiAccountStrategy;->unlock(Landroid/content/Context;)V

    goto :goto_2

    :cond_2
    sget p2, Lcom/samsung/android/support/senl/nt/app/R$string;->lock_note_cannot_open_another_account:I

    invoke-static {p1, p2, v0}, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHandler;->show(Landroid/content/Context;II)V

    goto :goto_2

    :cond_3
    :goto_0
    return v0

    :cond_4
    if-eqz p4, :cond_5

    sget-object p2, Lcom/samsung/android/support/senl/nt/app/account/SamsungAccountLoginForLockActivity;->ERROR_FLAG_NAME:Ljava/lang/String;

    sget p3, Lcom/samsung/android/support/senl/nt/app/account/SamsungAccountLoginForLockActivity;->ERROR_NO_ERROR_CODE_FLAG:I

    invoke-virtual {p4, p2, p3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    goto :goto_1

    :cond_5
    move p2, v0

    :goto_1
    sget p3, Lcom/samsung/android/support/senl/nt/app/account/SamsungAccountLoginForLockActivity;->ERROR_NETWORK_ERROR_CODE_FLAG:I

    and-int/2addr p2, p3

    if-eq p2, p3, :cond_6

    sget p2, Lcom/samsung/android/support/senl/nt/app/R$string;->lock_note_cannot_open_another_account:I

    invoke-static {p1, p2, v0}, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHandler;->show(Landroid/content/Context;II)V

    :cond_6
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockManagerStrategy;->mListener:Lcom/samsung/android/support/senl/nt/app/lock/strategy/ILockStrategyResultListener;

    const/4 p2, 0x3

    invoke-interface {p1, p2}, Lcom/samsung/android/support/senl/nt/app/lock/strategy/ILockStrategyResultListener;->onFail(I)V

    :goto_2
    const/4 p1, 0x1

    return p1
.end method

.method public verifyOtherAccount(Landroid/app/Activity;[Ljava/lang/String;)V
    .locals 2

    array-length v0, p2

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    sget-object p1, Lcom/samsung/android/support/senl/nt/app/lock/strategy/VerifyWithMultiAccountStrategy;->TAG:Ljava/lang/String;

    const-string p2, "verifyOtherAccount# uuidList more than 1"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    aget-object p2, p2, v0

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockManagerStrategyUtils;->getNoteEntityNotOwner(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/lock/strategy/VerifyWithMultiAccountStrategy;->mDocEntity:Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    if-nez p2, :cond_1

    sget-object p1, Lcom/samsung/android/support/senl/nt/app/lock/strategy/VerifyWithMultiAccountStrategy;->TAG:Ljava/lang/String;

    const-string p2, "verifyOtherAccount# Note owner or Entity is null"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance p2, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiAccountDialogFragment;

    invoke-direct {p2}, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiAccountDialogFragment;-><init>()V

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/lock/strategy/VerifyWithMultiAccountStrategy$1;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/support/senl/nt/app/lock/strategy/VerifyWithMultiAccountStrategy$1;-><init>(Lcom/samsung/android/support/senl/nt/app/lock/strategy/VerifyWithMultiAccountStrategy;Landroid/app/Activity;)V

    invoke-virtual {p2, v0}, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiAccountDialogFragment;->setOnResultListener(Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiAccountDialogFragment$ResultListener;)V

    check-cast p1, Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string v0, "VerifyMultiAccountDialogFragment"

    invoke-virtual {p2, p1, v0}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
