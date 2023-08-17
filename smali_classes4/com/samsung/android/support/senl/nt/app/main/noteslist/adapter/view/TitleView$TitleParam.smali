.class public Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView$TitleParam;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TitleParam"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView$TitleParam$TitleParamBuilder;
    }
.end annotation


# instance fields
.field private mBackgroundColor:I

.field private mContent:Ljava/lang/CharSequence;

.field private mHighlightText:Ljava/lang/String;

.field private mIsLock:Z

.field private mIsSdoc:Z

.field private mIsSupportInvertedBGColor:Z

.field private mMaxLine:I

.field private mViewMode:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView$TitleParam;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView$TitleParam;->setBackgroundColor(I)V

    return-void
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView$TitleParam;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView$TitleParam;->setContent(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView$TitleParam;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView$TitleParam;->setHighlightText(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic d(Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView$TitleParam;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView$TitleParam;->setIsLock(Z)V

    return-void
.end method

.method public static bridge synthetic e(Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView$TitleParam;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView$TitleParam;->setIsSdoc(Z)V

    return-void
.end method

.method public static bridge synthetic f(Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView$TitleParam;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView$TitleParam;->setIsSupportInvertedBGColor(Z)V

    return-void
.end method

.method public static bridge synthetic g(Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView$TitleParam;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView$TitleParam;->setMaxLine(I)V

    return-void
.end method

.method public static bridge synthetic h(Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView$TitleParam;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView$TitleParam;->setViewMode(I)V

    return-void
.end method

.method private setBackgroundColor(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView$TitleParam;->mBackgroundColor:I

    return-void
.end method

.method private setContent(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView$TitleParam;->mContent:Ljava/lang/CharSequence;

    return-void
.end method

.method private setHighlightText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView$TitleParam;->mHighlightText:Ljava/lang/String;

    return-void
.end method

.method private setIsLock(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView$TitleParam;->mIsLock:Z

    return-void
.end method

.method private setIsSdoc(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView$TitleParam;->mIsSdoc:Z

    return-void
.end method

.method private setIsSupportInvertedBGColor(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView$TitleParam;->mIsSupportInvertedBGColor:Z

    return-void
.end method

.method private setMaxLine(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView$TitleParam;->mMaxLine:I

    return-void
.end method

.method private setViewMode(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView$TitleParam;->mViewMode:I

    return-void
.end method


# virtual methods
.method public getBackgroundColor()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView$TitleParam;->mBackgroundColor:I

    return v0
.end method

.method public getContent()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView$TitleParam;->mContent:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getHighlightText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView$TitleParam;->mHighlightText:Ljava/lang/String;

    return-object v0
.end method

.method public getIsLock()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView$TitleParam;->mIsLock:Z

    return v0
.end method

.method public getIsSdoc()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView$TitleParam;->mIsSdoc:Z

    return v0
.end method

.method public getIsSupportInvertedBGColor()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView$TitleParam;->mIsSupportInvertedBGColor:Z

    return v0
.end method

.method public getMaxLine()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView$TitleParam;->mMaxLine:I

    return v0
.end method

.method public getViewMode()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView$TitleParam;->mViewMode:I

    return v0
.end method
