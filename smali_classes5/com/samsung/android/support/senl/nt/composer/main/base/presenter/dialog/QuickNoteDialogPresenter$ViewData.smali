.class Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter$ViewData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewData"
.end annotation


# instance fields
.field public mContentBtnStrId:I
    .annotation build Landroidx/annotation/StringRes;
    .end annotation
.end field

.field public mContentEnabled:Z

.field public mIcon:Landroid/graphics/drawable/Drawable;

.field public mLinkEnabled:Z

.field public mSaAction:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter$SaAction;

.field public mSuggestionInfo:Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/SuggestionInfo;

.field public mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/SuggestionInfo;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter$ViewData;->mSuggestionInfo:Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/SuggestionInfo;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/SuggestionInfo;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter$ViewData;->mTitle:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/SuggestionInfo;->getAppIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter$ViewData;->mIcon:Landroid/graphics/drawable/Drawable;

    :cond_0
    instance-of v0, p1, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/MediaObjectSuggestionInfo;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    sget p1, Lcom/samsung/android/support/senl/nt/composer/R$string;->quick_note_btn_attach:I

    invoke-direct {p0, v3, v2, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter$ViewData;->setButtonData(ZZI)V

    new-instance p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter$GallerySA;

    invoke-direct {p1, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter$GallerySA;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/a;)V

    :goto_0
    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter$ViewData;->mSaAction:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter$SaAction;

    goto :goto_1

    :cond_1
    instance-of v0, p1, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/WebPageSuggestionInfo;

    if-eqz v0, :cond_2

    sget p1, Lcom/samsung/android/support/senl/nt/composer/R$string;->quick_note_btn_whole_page:I

    invoke-direct {p0, v2, v2, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter$ViewData;->setButtonData(ZZI)V

    new-instance p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter$InternetSA;

    invoke-direct {p1, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter$InternetSA;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/b;)V

    goto :goto_0

    :cond_2
    instance-of v0, p1, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/MessageSuggestionInfo;

    const/4 v4, -0x1

    if-eqz v0, :cond_3

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter$ViewData;->setButtonData(ZZI)V

    new-instance p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter$MessageSA;

    invoke-direct {p1, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter$MessageSA;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/c;)V

    goto :goto_0

    :cond_3
    const-string v0, "ERROR"

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter$ViewData;->mTitle:Ljava/lang/String;

    invoke-direct {p0, v3, v3, v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter$ViewData;->setButtonData(ZZI)V

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter$ViewData$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter$ViewData$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter$ViewData;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter$ViewData;->mSaAction:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter$SaAction;

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ViewData# unexpected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private setButtonData(ZZI)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter$ViewData;->mLinkEnabled:Z

    iput-boolean p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter$ViewData;->mContentEnabled:Z

    iput p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter$ViewData;->mContentBtnStrId:I

    return-void
.end method
