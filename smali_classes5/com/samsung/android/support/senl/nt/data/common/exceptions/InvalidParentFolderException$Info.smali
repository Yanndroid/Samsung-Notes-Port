.class public Lcom/samsung/android/support/senl/nt/data/common/exceptions/InvalidParentFolderException$Info;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/data/common/exceptions/InvalidParentFolderException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Info"
.end annotation


# instance fields
.field private final mExceptionCode:I
    .annotation build Lcom/samsung/android/support/senl/nt/data/common/exceptions/ExceptionCode$Folder;
    .end annotation
.end field

.field private final mSrcFolderUuid:Ljava/lang/String;

.field private final mToParentFolderUuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p3    # I
        .annotation build Lcom/samsung/android/support/senl/nt/data/common/exceptions/ExceptionCode$Folder;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/common/exceptions/InvalidParentFolderException$Info;->mSrcFolderUuid:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/data/common/exceptions/InvalidParentFolderException$Info;->mToParentFolderUuid:Ljava/lang/String;

    iput p3, p0, Lcom/samsung/android/support/senl/nt/data/common/exceptions/InvalidParentFolderException$Info;->mExceptionCode:I

    return-void
.end method


# virtual methods
.method public getExceptionCode()I
    .locals 1
    .annotation build Lcom/samsung/android/support/senl/nt/data/common/exceptions/ExceptionCode$Folder;
    .end annotation

    iget v0, p0, Lcom/samsung/android/support/senl/nt/data/common/exceptions/InvalidParentFolderException$Info;->mExceptionCode:I

    return v0
.end method

.method public getSourceFolderUuid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/common/exceptions/InvalidParentFolderException$Info;->mSrcFolderUuid:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetFolderUuid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/common/exceptions/InvalidParentFolderException$Info;->mToParentFolderUuid:Ljava/lang/String;

    return-object v0
.end method
