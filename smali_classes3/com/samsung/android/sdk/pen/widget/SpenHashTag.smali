.class public Lcom/samsung/android/sdk/pen/widget/SpenHashTag;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/pen/widget/SpenHashTag$HashTagInfo;,
        Lcom/samsung/android/sdk/pen/widget/SpenHashTag$HashTagListener;
    }
.end annotation


# static fields
.field private static final CR_CHAR:C = '\r'

.field private static final LF_CHAR:C = '\n'

.field private static final MAX_CHARACTER:I = 0x32

.field private static final SPACE_CHAR:C = ' '

.field private static final TAB_CHAR:C = '\t'

.field private static final TAG:Ljava/lang/String; = "SpenHashTag"

.field private static final TAG_CHARS:[C


# instance fields
.field public final MESSAGE_WHAT_SHOW_CONFIRM:I

.field public final SHOW_CONFIRM_DELAY_TIME:I

.field public hashTagBubbleList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mConfirmObject:Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

.field public mConfirmTagInfo:Lcom/samsung/android/sdk/pen/widget/SpenHashTag$HashTagInfo;

.field public mConfirmView:Lcom/samsung/android/sdk/pen/widget/SpenFloatingTagConfirmButton;

.field public mIsEnabled:Z

.field public mListener:Lcom/samsung/android/sdk/pen/widget/SpenHashTag$HashTagListener;

.field private mObject:Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

.field public mShowConfirmHandler:Landroid/os/Handler;

.field public mSkipShowConfirm:Z

.field public mTagInfo:Lcom/samsung/android/sdk/pen/widget/SpenHashTag$HashTagInfo;

.field public mView:Landroid/view/View;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/samsung/android/sdk/pen/widget/SpenHashTag;->TAG_CHARS:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x23s
        -0x1a1s
        -0xfds
    .end array-data
.end method

.method public constructor <init>(Landroid/view/View;Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/widget/SpenHashTag;->hashTagBubbleList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/widget/SpenHashTag;->mSkipShowConfirm:Z

    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/widget/SpenHashTag;->mIsEnabled:Z

    const/4 v1, 0x1

    iput v1, p0, Lcom/samsung/android/sdk/pen/widget/SpenHashTag;->MESSAGE_WHAT_SHOW_CONFIRM:I

    const/16 v1, 0x1f4

    iput v1, p0, Lcom/samsung/android/sdk/pen/widget/SpenHashTag;->SHOW_CONFIRM_DELAY_TIME:I

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/widget/SpenHashTag;->mView:Landroid/view/View;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/widget/SpenHashTag;->mListener:Lcom/samsung/android/sdk/pen/widget/SpenHashTag$HashTagListener;

    new-instance p1, Lcom/samsung/android/sdk/pen/widget/SpenFloatingTagConfirmButton;

    invoke-direct {p1, p2}, Lcom/samsung/android/sdk/pen/widget/SpenFloatingTagConfirmButton;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/widget/SpenHashTag;->mConfirmView:Lcom/samsung/android/sdk/pen/widget/SpenFloatingTagConfirmButton;

    new-instance p2, Lcom/samsung/android/sdk/pen/widget/SpenHashTag$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/sdk/pen/widget/SpenHashTag$1;-><init>(Lcom/samsung/android/sdk/pen/widget/SpenHashTag;)V

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/pen/widget/SpenFloatingTagConfirmButton;->setListener(Lcom/samsung/android/sdk/pen/widget/SpenFloatingTagConfirmButton$ActionListener;)V

    new-instance p1, Lcom/samsung/android/sdk/pen/widget/SpenHashTag$2;

    invoke-direct {p1, p0}, Lcom/samsung/android/sdk/pen/widget/SpenHashTag$2;-><init>(Lcom/samsung/android/sdk/pen/widget/SpenHashTag;)V

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/widget/SpenHashTag;->mShowConfirmHandler:Landroid/os/Handler;

    return-void
.end method

.method private addConfirmView()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/widget/SpenHashTag;->mConfirmView:Lcom/samsung/android/sdk/pen/widget/SpenFloatingTagConfirmButton;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/widget/SpenHashTag;->mView:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/widget/SpenHashTag;->mConfirmView:Lcom/samsung/android/sdk/pen/widget/SpenFloatingTagConfirmButton;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    if-ne v1, v0, :cond_1

    return-void

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/sdk/pen/widget/SpenHashTag;->mConfirmView:Lcom/samsung/android/sdk/pen/widget/SpenFloatingTagConfirmButton;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2
    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/widget/SpenHashTag;->mConfirmView:Lcom/samsung/android/sdk/pen/widget/SpenFloatingTagConfirmButton;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private isTagChar(C)Z
    .locals 5

    sget-object v0, Lcom/samsung/android/sdk/pen/widget/SpenHashTag;->TAG_CHARS:[C

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-char v4, v0, v3

    if-ne p1, v4, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method


# virtual methods
.method public appendSpans(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;Lcom/samsung/android/sdk/pen/widget/SpenHashTag$HashTagInfo;Z)V
    .locals 4

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "appendSpans tagPos("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p2, Lcom/samsung/android/sdk/pen/widget/SpenHashTag$HashTagInfo;->start:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p2, Lcom/samsung/android/sdk/pen/widget/SpenHashTag$HashTagInfo;->end:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") isConfirmed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenHashTag"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->isChanged()Z

    move-result v0

    new-instance v1, Lcom/samsung/android/sdk/pen/document/textspan/SpenComposingTagSpan;

    iget v2, p2, Lcom/samsung/android/sdk/pen/widget/SpenHashTag$HashTagInfo;->start:I

    iget p2, p2, Lcom/samsung/android/sdk/pen/widget/SpenHashTag$HashTagInfo;->end:I

    const/4 v3, 0x3

    invoke-direct {v1, v2, p2, v3, p3}, Lcom/samsung/android/sdk/pen/document/textspan/SpenComposingTagSpan;-><init>(IIIZ)V

    invoke-virtual {p1, v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->appendTextSpan(Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;)V

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->clearChangedFlag()V

    :cond_0
    return-void
.end method

.method public canTag(Lcom/samsung/android/sdk/pen/widget/SpenHashTag$HashTagInfo;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/pen/widget/SpenHashTag;->getTagText(Lcom/samsung/android/sdk/pen/widget/SpenHashTag$HashTagInfo;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/pen/widget/SpenHashTag;->isInTagList(Ljava/lang/String;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public checkIfTagConfirmed(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;Lcom/samsung/android/sdk/pen/widget/SpenHashTag$HashTagInfo;Lcom/samsung/android/sdk/pen/document/SpenObjectShape;Lcom/samsung/android/sdk/pen/widget/SpenHashTag$HashTagInfo;)Z
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/sdk/pen/widget/SpenHashTag;->isValid(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;Lcom/samsung/android/sdk/pen/widget/SpenHashTag$HashTagInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p3, p4}, Lcom/samsung/android/sdk/pen/widget/SpenHashTag;->isValid(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;Lcom/samsung/android/sdk/pen/widget/SpenHashTag$HashTagInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/sdk/pen/widget/SpenHashTag;->isOverlapped(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;Lcom/samsung/android/sdk/pen/widget/SpenHashTag$HashTagInfo;Lcom/samsung/android/sdk/pen/document/SpenObjectShape;Lcom/samsung/android/sdk/pen/widget/SpenHashTag$HashTagInfo;)Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/pen/widget/SpenHashTag;->clear(Z)V

    return-void
.end method

.method public clear(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/widget/SpenHashTag;->removeAllSpans()V

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/widget/SpenHashTag;->mObject:Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/widget/SpenHashTag;->mConfirmObject:Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/widget/SpenHashTag;->mTagInfo:Lcom/samsung/android/sdk/pen/widget/SpenHashTag$HashTagInfo;

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/widget/SpenHashTag;->mConfirmTagInfo:Lcom/samsung/android/sdk/pen/widget/SpenHashTag$HashTagInfo;

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/widget/SpenHashTag;->hashTagBubbleList:Ljava/util/ArrayList;

    return-void
.end method

.method public close()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/widget/SpenHashTag;->mShowConfirmHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/widget/SpenHashTag;->mShowConfirmHandler:Landroid/os/Handler;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/widget/SpenHashTag;->mConfirmView:Lcom/samsung/android/sdk/pen/widget/SpenFloatingTagConfirmButton;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/widget/SpenHashTag;->mConfirmView:Lcom/samsung/android/sdk/pen/widget/SpenFloatingTagConfirmButton;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/widget/SpenHashTag;->mConfirmView:Lcom/samsung/android/sdk/pen/widget/SpenFloatingTagConfirmButton;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/widget/SpenFloatingTagConfirmButton;->close()V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/widget/SpenHashTag;->mConfirmView:Lcom/samsung/android/sdk/pen/widget/SpenFloatingTagConfirmButton;

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/pen/widget/SpenHashTag;->clear(Z)V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/widget/SpenHashTag;->mView:Landroid/view/View;

    return-void
.end method

.method public findHashTag(Ljava/lang/String;I)Lcom/samsung/android/sdk/pen/widget/SpenHashTag$HashTagInfo;
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_9

    if-lez p2, :cond_9

    if-ge v1, p2, :cond_1

    goto/16 :goto_1

    :cond_1
    add-int/lit8 p2, p2, -0x1

    move v2, p2

    :goto_0
    if-gez v2, :cond_2

    return-object v0

    :cond_2
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-direct {p0, v3}, Lcom/samsung/android/sdk/pen/widget/SpenHashTag;->isTagChar(C)Z

    move-result v4

    if-eqz v4, :cond_7

    :cond_3
    add-int/lit8 p2, p2, 0x1

    if-ge p2, v1, :cond_5

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {p0, v3}, Lcom/samsung/android/sdk/pen/widget/SpenHashTag;->isNonTagChar(C)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-direct {p0, v3}, Lcom/samsung/android/sdk/pen/widget/SpenHashTag;->isTagChar(C)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_4
    move v1, p2

    :cond_5
    sub-int p2, v1, v2

    add-int/lit8 p2, p2, -0x1

    const-string v3, "SpenHashTag"

    const/16 v4, 0x32

    if-le p2, v4, :cond_6

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "tag("

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ") is longer than Max("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_6
    new-instance p2, Lcom/samsung/android/sdk/pen/widget/SpenHashTag$HashTagInfo;

    invoke-direct {p2}, Lcom/samsung/android/sdk/pen/widget/SpenHashTag$HashTagInfo;-><init>()V

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/samsung/android/sdk/pen/widget/SpenHashTag$HashTagInfo;->text:Ljava/lang/String;

    iput v2, p2, Lcom/samsung/android/sdk/pen/widget/SpenHashTag$HashTagInfo;->start:I

    iput v1, p2, Lcom/samsung/android/sdk/pen/widget/SpenHashTag$HashTagInfo;->end:I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "tagText ="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p2, Lcom/samsung/android/sdk/pen/widget/SpenHashTag$HashTagInfo;->text:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " start="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p2, Lcom/samsung/android/sdk/pen/widget/SpenHashTag$HashTagInfo;->start:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " end="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p2, Lcom/samsung/android/sdk/pen/widget/SpenHashTag$HashTagInfo;->end:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p2

    :cond_7
    invoke-virtual {p0, v3}, Lcom/samsung/android/sdk/pen/widget/SpenHashTag;->isNonTagChar(C)Z

    move-result v3

    if-eqz v3, :cond_8

    return-object v0

    :cond_8
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_0

    :cond_9
    :goto_1
    return-object v0
.end method

.method public getTagText(Lcom/samsung/android/sdk/pen/widget/SpenHashTag$HashTagInfo;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/samsung/android/sdk/pen/widget/SpenHashTag$HashTagInfo;->text:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget-object p1, p1, Lcom/samsung/android/sdk/pen/widget/SpenHashTag$HashTagInfo;->text:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public hideConfirmView()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/pen/widget/SpenHashTag;->showConfirmView(Z)V

    return-void
.end method

.method public isBlank(C)Z
    .locals 1

    const/16 v0, 0x20

    if-eq p1, v0, :cond_1

    const/16 v0, 0x9

    if-eq p1, v0, :cond_1

    const/16 v0, 0xa

    if-eq p1, v0, :cond_1

    const/16 v0, 0xd

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/widget/SpenHashTag;->mIsEnabled:Z

    return v0
.end method

.method public isInTagList(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/widget/SpenHashTag;->hashTagBubbleList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isNonTagChar(C)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/pen/widget/SpenHashTag;->isBlank(C)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/pen/widget/SpenHashTag;->isSpecialCharacter(C)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public isOverlapped(IIII)Z
    .locals 3

    if-ge p1, p4, :cond_0

    if-ge p3, p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isOverlapped src("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ") dst("

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") :"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SpenHashTag"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public isOverlapped(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;Lcom/samsung/android/sdk/pen/widget/SpenHashTag$HashTagInfo;Lcom/samsung/android/sdk/pen/document/SpenObjectShape;Lcom/samsung/android/sdk/pen/widget/SpenHashTag$HashTagInfo;)Z
    .locals 0
    .param p1    # Lcom/samsung/android/sdk/pen/document/SpenObjectShape;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/sdk/pen/widget/SpenHashTag$HashTagInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/samsung/android/sdk/pen/document/SpenObjectShape;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/samsung/android/sdk/pen/widget/SpenHashTag$HashTagInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1, p3}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p2, Lcom/samsung/android/sdk/pen/widget/SpenHashTag$HashTagInfo;->start:I

    iget p2, p2, Lcom/samsung/android/sdk/pen/widget/SpenHashTag$HashTagInfo;->end:I

    iget p3, p4, Lcom/samsung/android/sdk/pen/widget/SpenHashTag$HashTagInfo;->start:I

    iget p4, p4, Lcom/samsung/android/sdk/pen/widget/SpenHashTag$HashTagInfo;->end:I

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/sdk/pen/widget/SpenHashTag;->isOverlapped(IIII)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isSpecialCharacter(C)Z
    .locals 4

    invoke-static {p1}, Ljava/lang/Character;->getType(C)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x17

    if-ne v3, v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-nez v0, :cond_2

    invoke-static {p1}, Ljava/lang/Character;->isUnicodeIdentifierPart(C)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :cond_2
    :goto_1
    return v1
.end method

.method public isValid(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;Lcom/samsung/android/sdk/pen/widget/SpenHashTag$HashTagInfo;)Z
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    iget-object p1, p2, Lcom/samsung/android/sdk/pen/widget/SpenHashTag$HashTagInfo;->text:Ljava/lang/String;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget p1, p2, Lcom/samsung/android/sdk/pen/widget/SpenHashTag$HashTagInfo;->start:I

    if-ltz p1, :cond_1

    iget p2, p2, Lcom/samsung/android/sdk/pen/widget/SpenHashTag$HashTagInfo;->end:I

    if-le p2, p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method public onAttachedToWindow()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/widget/SpenHashTag;->addConfirmView()V

    return-void
.end method

.method public onParentTouchEvent(Landroid/view/MotionEvent;)V
    .locals 3

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/widget/SpenHashTag;->mIsEnabled:Z

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/samsung/android/sdk/pen/widget/SpenHashTag;->showConfirmView(Z)V

    iput-boolean v2, p0, Lcom/samsung/android/sdk/pen/widget/SpenHashTag;->mSkipShowConfirm:Z

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v2, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    :cond_2
    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/widget/SpenHashTag;->mSkipShowConfirm:Z

    :cond_3
    :goto_0
    return-void
.end method

.method public refreshTagInfo()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/widget/SpenHashTag;->mObject:Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/widget/SpenHashTag;->mTagInfo:Lcom/samsung/android/sdk/pen/widget/SpenHashTag$HashTagInfo;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getText()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/widget/SpenHashTag;->mTagInfo:Lcom/samsung/android/sdk/pen/widget/SpenHashTag$HashTagInfo;

    iget v1, v1, Lcom/samsung/android/sdk/pen/widget/SpenHashTag$HashTagInfo;->start:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sdk/pen/widget/SpenHashTag;->findHashTag(Ljava/lang/String;I)Lcom/samsung/android/sdk/pen/widget/SpenHashTag$HashTagInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/widget/SpenHashTag;->mTagInfo:Lcom/samsung/android/sdk/pen/widget/SpenHashTag$HashTagInfo;

    :cond_0
    return-void
.end method

.method public removeAllSpans()V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/widget/SpenHashTag;->mObject:Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    const/16 v1, 0x12

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getTextSpan()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/widget/SpenHashTag;->mObject:Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->isChanged()Z

    move-result v2

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;->getType()I

    move-result v4

    if-ne v4, v1, :cond_0

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/widget/SpenHashTag;->mObject:Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    invoke-virtual {v4, v3}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->removeTextSpan(Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;)V

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/widget/SpenHashTag;->mObject:Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->clearChangedFlag()V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/widget/SpenHashTag;->mConfirmObject:Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    if-eqz v0, :cond_5

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/widget/SpenHashTag;->mObject:Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    if-eq v0, v2, :cond_5

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getTextSpan()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_5

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/widget/SpenHashTag;->mConfirmObject:Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->isChanged()Z

    move-result v2

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;->getType()I

    move-result v4

    if-ne v4, v1, :cond_3

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/widget/SpenHashTag;->mConfirmObject:Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    invoke-virtual {v4, v3}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->removeTextSpan(Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "removeAllSpans >> ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;->getStart()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;->getEnd()I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SpenHashTag"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    if-nez v2, :cond_5

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/widget/SpenHashTag;->mConfirmObject:Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->clearChangedFlag()V

    :cond_5
    return-void
.end method

.method public removeSpans(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;Lcom/samsung/android/sdk/pen/widget/SpenHashTag$HashTagInfo;Z)V
    .locals 6

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeSpans tagPos("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p2, Lcom/samsung/android/sdk/pen/widget/SpenHashTag$HashTagInfo;->start:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Lcom/samsung/android/sdk/pen/widget/SpenHashTag$HashTagInfo;->end:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") isConfirmed:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SpenHashTag"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p2, Lcom/samsung/android/sdk/pen/widget/SpenHashTag$HashTagInfo;->start:I

    iget p2, p2, Lcom/samsung/android/sdk/pen/widget/SpenHashTag$HashTagInfo;->end:I

    invoke-virtual {p1, v0, p2}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->findTextSpan(II)Ljava/util/ArrayList;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->isChanged()Z

    move-result v0

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;->getType()I

    move-result v4

    const/16 v5, 0x12

    if-ne v4, v5, :cond_0

    move-object v4, v3

    check-cast v4, Lcom/samsung/android/sdk/pen/document/textspan/SpenComposingTagSpan;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/pen/document/textspan/SpenComposingTagSpan;->isComposingTagBgPropertyEnabled()Z

    move-result v4

    if-ne v4, p3, :cond_0

    invoke-virtual {p1, v3}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->removeTextSpan(Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "removeSpans >> ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;->getStart()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;->getEnd()I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->clearChangedFlag()V

    :cond_2
    return-void
.end method

.method public requestToShowConfirm()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/widget/SpenHashTag;->mListener:Lcom/samsung/android/sdk/pen/widget/SpenHashTag$HashTagListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/widget/SpenHashTag;->mShowConfirmHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/widget/SpenHashTag;->mShowConfirmHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method public setConfirmResult(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/widget/SpenHashTag;->mConfirmTagInfo:Lcom/samsung/android/sdk/pen/widget/SpenHashTag$HashTagInfo;

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/pen/widget/SpenHashTag;->getTagText(Lcom/samsung/android/sdk/pen/widget/SpenHashTag$HashTagInfo;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/widget/SpenHashTag;->mListener:Lcom/samsung/android/sdk/pen/widget/SpenHashTag$HashTagListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/pen/widget/SpenHashTag$HashTagListener;->onHashTagAdded(Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/widget/SpenHashTag;->mConfirmObject:Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/widget/SpenHashTag;->mConfirmTagInfo:Lcom/samsung/android/sdk/pen/widget/SpenHashTag$HashTagInfo;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/sdk/pen/widget/SpenHashTag;->removeSpans(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;Lcom/samsung/android/sdk/pen/widget/SpenHashTag$HashTagInfo;Z)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Lcom/samsung/android/sdk/pen/widget/SpenHashTag;->setConfirmTagInfo(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;Lcom/samsung/android/sdk/pen/widget/SpenHashTag$HashTagInfo;)V

    return-void
.end method

.method public setConfirmTagInfo(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;Lcom/samsung/android/sdk/pen/widget/SpenHashTag$HashTagInfo;)V
    .locals 2

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/widget/SpenHashTag;->mConfirmObject:Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    if-eqz p2, :cond_0

    new-instance p1, Lcom/samsung/android/sdk/pen/widget/SpenHashTag$HashTagInfo;

    iget-object v0, p2, Lcom/samsung/android/sdk/pen/widget/SpenHashTag$HashTagInfo;->text:Ljava/lang/String;

    iget v1, p2, Lcom/samsung/android/sdk/pen/widget/SpenHashTag$HashTagInfo;->start:I

    iget p2, p2, Lcom/samsung/android/sdk/pen/widget/SpenHashTag$HashTagInfo;->end:I

    invoke-direct {p1, v0, v1, p2}, Lcom/samsung/android/sdk/pen/widget/SpenHashTag$HashTagInfo;-><init>(Ljava/lang/String;II)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/samsung/android/sdk/pen/widget/SpenHashTag;->mConfirmTagInfo:Lcom/samsung/android/sdk/pen/widget/SpenHashTag$HashTagInfo;

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/widget/SpenHashTag;->mConfirmObject:Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/widget/SpenHashTag;->mConfirmTagInfo:Lcom/samsung/android/sdk/pen/widget/SpenHashTag$HashTagInfo;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/sdk/pen/widget/SpenHashTag;->appendSpans(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;Lcom/samsung/android/sdk/pen/widget/SpenHashTag$HashTagInfo;Z)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/widget/SpenHashTag;->clear()V

    :cond_0
    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/widget/SpenHashTag;->mIsEnabled:Z

    return-void
.end method

.method public setHashTagListener(Lcom/samsung/android/sdk/pen/widget/SpenHashTag$HashTagListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/widget/SpenHashTag;->mListener:Lcom/samsung/android/sdk/pen/widget/SpenHashTag$HashTagListener;

    return-void
.end method

.method public setTagInfo(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;Lcom/samsung/android/sdk/pen/widget/SpenHashTag$HashTagInfo;)V
    .locals 2

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/widget/SpenHashTag;->mObject:Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    if-eqz p2, :cond_0

    new-instance p1, Lcom/samsung/android/sdk/pen/widget/SpenHashTag$HashTagInfo;

    iget-object v0, p2, Lcom/samsung/android/sdk/pen/widget/SpenHashTag$HashTagInfo;->text:Ljava/lang/String;

    iget v1, p2, Lcom/samsung/android/sdk/pen/widget/SpenHashTag$HashTagInfo;->start:I

    iget p2, p2, Lcom/samsung/android/sdk/pen/widget/SpenHashTag$HashTagInfo;->end:I

    invoke-direct {p1, v0, v1, p2}, Lcom/samsung/android/sdk/pen/widget/SpenHashTag$HashTagInfo;-><init>(Ljava/lang/String;II)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/samsung/android/sdk/pen/widget/SpenHashTag;->mTagInfo:Lcom/samsung/android/sdk/pen/widget/SpenHashTag$HashTagInfo;

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/widget/SpenHashTag;->mObject:Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/widget/SpenHashTag;->mTagInfo:Lcom/samsung/android/sdk/pen/widget/SpenHashTag$HashTagInfo;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/sdk/pen/widget/SpenHashTag;->appendSpans(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;Lcom/samsung/android/sdk/pen/widget/SpenHashTag$HashTagInfo;Z)V

    return-void
.end method

.method public setTagList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/widget/SpenHashTag;->hashTagBubbleList:Ljava/util/ArrayList;

    return-void
.end method

.method public showConfirmView(Z)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/widget/SpenHashTag;->mConfirmView:Lcom/samsung/android/sdk/pen/widget/SpenFloatingTagConfirmButton;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/widget/SpenHashTag;->mListener:Lcom/samsung/android/sdk/pen/widget/SpenHashTag$HashTagListener;

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/widget/SpenHashTag;->mConfirmObject:Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/widget/SpenHashTag;->mConfirmTagInfo:Lcom/samsung/android/sdk/pen/widget/SpenHashTag$HashTagInfo;

    if-eqz v2, :cond_1

    iget v3, v2, Lcom/samsung/android/sdk/pen/widget/SpenHashTag$HashTagInfo;->start:I

    iget v2, v2, Lcom/samsung/android/sdk/pen/widget/SpenHashTag$HashTagInfo;->end:I

    invoke-interface {p1, v1, v3, v2}, Lcom/samsung/android/sdk/pen/widget/SpenHashTag$HashTagListener;->getScreenTextRect(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;II)Landroid/graphics/RectF;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/widget/SpenHashTag;->addConfirmView()V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/widget/SpenHashTag;->mConfirmView:Lcom/samsung/android/sdk/pen/widget/SpenFloatingTagConfirmButton;

    invoke-virtual {v1, v0, p1}, Lcom/samsung/android/sdk/pen/widget/SpenFloatingTagConfirmButton;->show(ZLandroid/graphics/RectF;)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/widget/SpenHashTag;->mShowConfirmHandler:Landroid/os/Handler;

    if-eqz p1, :cond_2

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/widget/SpenHashTag;->mConfirmView:Lcom/samsung/android/sdk/pen/widget/SpenFloatingTagConfirmButton;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/sdk/pen/widget/SpenFloatingTagConfirmButton;->show(ZLandroid/graphics/RectF;)V

    return-void
.end method

.method public updateConfirmViewPosition()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/widget/SpenHashTag;->mConfirmView:Lcom/samsung/android/sdk/pen/widget/SpenFloatingTagConfirmButton;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/widget/SpenHashTag;->requestToShowConfirm()V

    :cond_0
    return-void
.end method

.method public updateHashTag()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sdk/pen/widget/SpenHashTag;->updateHashTag(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;I)V

    return-void
.end method

.method public updateHashTag(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;I)V
    .locals 3

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/widget/SpenHashTag;->mIsEnabled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/widget/SpenHashTag;->mConfirmObject:Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/widget/SpenHashTag;->mConfirmView:Lcom/samsung/android/sdk/pen/widget/SpenFloatingTagConfirmButton;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/widget/SpenFloatingTagConfirmButton;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/pen/widget/SpenHashTag;->showConfirmView(Z)V

    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/samsung/android/sdk/pen/widget/SpenHashTag;->findHashTag(Ljava/lang/String;I)Lcom/samsung/android/sdk/pen/widget/SpenHashTag$HashTagInfo;

    move-result-object p2

    goto :goto_0

    :cond_2
    move-object p2, v0

    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/sdk/pen/widget/SpenHashTag;->isValid(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;Lcom/samsung/android/sdk/pen/widget/SpenHashTag$HashTagInfo;)Z

    move-result v1

    if-nez v1, :cond_3

    move-object p1, v0

    move-object p2, p1

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/widget/SpenHashTag;->refreshTagInfo()V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/widget/SpenHashTag;->removeAllSpans()V

    iget-boolean v1, p0, Lcom/samsung/android/sdk/pen/widget/SpenHashTag;->mSkipShowConfirm:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/widget/SpenHashTag;->mObject:Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/widget/SpenHashTag;->mTagInfo:Lcom/samsung/android/sdk/pen/widget/SpenHashTag$HashTagInfo;

    invoke-virtual {p0, v1, v2, p1, p2}, Lcom/samsung/android/sdk/pen/widget/SpenHashTag;->checkIfTagConfirmed(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;Lcom/samsung/android/sdk/pen/widget/SpenHashTag$HashTagInfo;Lcom/samsung/android/sdk/pen/document/SpenObjectShape;Lcom/samsung/android/sdk/pen/widget/SpenHashTag$HashTagInfo;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/widget/SpenHashTag;->mTagInfo:Lcom/samsung/android/sdk/pen/widget/SpenHashTag$HashTagInfo;

    invoke-virtual {p0, v1}, Lcom/samsung/android/sdk/pen/widget/SpenHashTag;->canTag(Lcom/samsung/android/sdk/pen/widget/SpenHashTag$HashTagInfo;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/widget/SpenHashTag;->mObject:Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/widget/SpenHashTag;->mTagInfo:Lcom/samsung/android/sdk/pen/widget/SpenHashTag$HashTagInfo;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sdk/pen/widget/SpenHashTag;->setConfirmTagInfo(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;Lcom/samsung/android/sdk/pen/widget/SpenHashTag$HashTagInfo;)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/widget/SpenHashTag;->requestToShowConfirm()V

    goto :goto_1

    :cond_4
    invoke-virtual {p0, v0, v0}, Lcom/samsung/android/sdk/pen/widget/SpenHashTag;->setConfirmTagInfo(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;Lcom/samsung/android/sdk/pen/widget/SpenHashTag$HashTagInfo;)V

    :goto_1
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/sdk/pen/widget/SpenHashTag;->setTagInfo(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;Lcom/samsung/android/sdk/pen/widget/SpenHashTag$HashTagInfo;)V

    return-void
.end method
