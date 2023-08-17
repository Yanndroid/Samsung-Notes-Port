.class public abstract Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/AbsPasteLogic;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/AbsPasteLogic$Construct;
    }
.end annotation


# static fields
.field public static final ERROR_TYPE_COEDIT_PASTE_PAGE:I = 0x40

.field public static final ERROR_TYPE_COEDIT_RESTRICTION:I = 0x20

.field public static final ERROR_TYPE_COEDIT_RESTRICTION_LARGE_ITEMS:I = 0x80

.field public static final ERROR_TYPE_DND_ONLY_ONE_AUDIO:I = 0x2

.field public static final ERROR_TYPE_FAIL_TO_LOAD_DOC:I = 0x4

.field public static final ERROR_TYPE_PASTE_PAGE_BODY_TEXT_LIMIT:I = 0x10

.field public static final ERROR_TYPE_PASTE_PAGE_ON_SINGLE:I = 0x1

.field public static final ERROR_TYPE_PDF_READER_NOT_SUPPORT:I = 0x8

.field public static final MESSAGE_GET_CONTENTS:I = 0x2

.field public static final MESSAGE_PASTE_CONTENT_IN_TITLE:I = 0x6

.field public static final MESSAGE_PASTE_NEXT_CONTENT:I = 0x3

.field public static final MESSAGE_PASTE_NEXT_OBJECT:I = 0x4

.field public static final MESSAGE_PASTE_PAGE:I = 0x7

.field public static final MESSAGE_PASTE_PDF:I = 0x8

.field public static final MESSAGE_POST_SET_FILE:I = 0x5

.field public static final MESSAGE_RELEASE:I = 0x9

.field public static final MESSAGE_WEB_CARD_PREVIEW_DIALOG:I = 0xa


# instance fields
.field public mConstruct:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/AbsPasteLogic$Construct;

.field public mContext:Landroid/content/Context;

.field private mErrorCode:I

.field public mHandler:Landroid/os/Handler;

.field public mIsReleased:Z

.field public mUpdateInvertBG:Z


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/AbsPasteLogic$Construct;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/AbsPasteLogic;->mUpdateInvertBG:Z

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/AbsPasteLogic;->mErrorCode:I

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/AbsPasteLogic;->mConstruct:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/AbsPasteLogic$Construct;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/AbsPasteLogic;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/AbsPasteLogic;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static messageToString(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1
    const-string p0, "MESSAGE_WEB_CARD_PREVIEW_DIALOG"

    return-object p0

    :pswitch_2
    const-string p0, "MESSAGE_RELEASE"

    return-object p0

    :pswitch_3
    const-string p0, "MESSAGE_PASTE_PDF"

    return-object p0

    :pswitch_4
    const-string p0, "MESSAGE_PASTE_CONTENT_IN_TITLE"

    return-object p0

    :pswitch_5
    const-string p0, "MESSAGE_POST_SET_FILE"

    return-object p0

    :pswitch_6
    const-string p0, "MESSAGE_PASTE_NEXT_OBJECT"

    return-object p0

    :pswitch_7
    const-string p0, "MESSAGE_PASTE_NEXT_CONTENT"

    return-object p0

    :pswitch_8
    const-string p0, "MESSAGE_GET_CONTENTS"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/AbsPasteLogic;->mErrorCode:I

    return v0
.end method

.method public abstract handleMessage(Landroid/os/Message;)V
    .param p1    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public isUpdateInvertBG()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/AbsPasteLogic;->mUpdateInvertBG:Z

    return v0
.end method

.method public abstract readyContents()V
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation
.end method

.method public abstract release()V
.end method

.method public setErrorCode(I)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/AbsPasteLogic;->mErrorCode:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/AbsPasteLogic;->mErrorCode:I

    return-void
.end method

.method public setReleased(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/AbsPasteLogic;->mIsReleased:Z

    return-void
.end method
