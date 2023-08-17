.class public Lcom/samsung/android/support/senl/nt/data/common/exceptions/InvalidParentFolderException;
.super Ljava/lang/Exception;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/data/common/exceptions/InvalidParentFolderException$Info;
    }
.end annotation


# instance fields
.field private final mExtraInfo:Lcom/samsung/android/support/senl/nt/data/common/exceptions/InvalidParentFolderException$Info;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/data/common/exceptions/InvalidParentFolderException$Info;)V
    .locals 1

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/data/common/exceptions/InvalidParentFolderException;->getErrorMessage(Lcom/samsung/android/support/senl/nt/data/common/exceptions/InvalidParentFolderException$Info;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/common/exceptions/InvalidParentFolderException;->mExtraInfo:Lcom/samsung/android/support/senl/nt/data/common/exceptions/InvalidParentFolderException$Info;

    return-void
.end method

.method private static getErrorMessage(Lcom/samsung/android/support/senl/nt/data/common/exceptions/InvalidParentFolderException$Info;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/common/exceptions/InvalidParentFolderException$Info;->getSourceFolderUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/common/exceptions/InvalidParentFolderException$Info;->getTargetFolderUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/common/exceptions/InvalidParentFolderException$Info;->getExceptionCode()I

    move-result p0

    packed-switch p0, :pswitch_data_0

    const-string p0, ""

    goto :goto_2

    :pswitch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "parent folder is not used state, parentUuid: "

    goto :goto_0

    :pswitch_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "folder depth exceeds maximum, src/dst: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " / "

    :goto_0
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] folder is ancestor of ["

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_2
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getExtraInfo()Lcom/samsung/android/support/senl/nt/data/common/exceptions/InvalidParentFolderException$Info;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/common/exceptions/InvalidParentFolderException;->mExtraInfo:Lcom/samsung/android/support/senl/nt/data/common/exceptions/InvalidParentFolderException$Info;

    return-object v0
.end method
