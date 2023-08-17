.class public Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView;
.super Lcom/samsung/android/support/senl/nt/app/common/widget/HoverPopupTextView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView$TitleParam;,
        Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView$NoteTitleContract;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TitleView"


# instance fields
.field private mNoteTitleContract:Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView$NoteTitleContract;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/common/widget/HoverPopupTextView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/common/widget/HoverPopupTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/app/common/widget/HoverPopupTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private getRecommendedTitle(Lcom/samsung/android/support/senl/nt/data/resolver/operation/common/title/AutoTitleCreator$CreationPriority;Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;
    .locals 3

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView$1;->$SwitchMap$com$samsung$android$support$senl$nt$data$resolver$operation$common$title$AutoTitleCreator$CreationPriority:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    const/4 v2, 0x3

    if-eq p1, v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView;->mNoteTitleContract:Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView$NoteTitleContract;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView$NoteTitleContract;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/samsung/android/support/senl/nt/app/R$string;->noteslist_title_drawing_ps:I

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, p3, p4}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView;->getTitleTime(J)Ljava/lang/String;

    move-result-object p3

    aput-object p3, v1, v0

    invoke-virtual {p1, p2, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView;->mNoteTitleContract:Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView$NoteTitleContract;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView$NoteTitleContract;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/samsung/android/support/senl/nt/app/R$string;->noteslist_title_image_ps:I

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, p3, p4}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView;->getTitleTime(J)Ljava/lang/String;

    move-result-object p3

    aput-object p3, v1, v0

    invoke-virtual {p1, p2, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView;->mNoteTitleContract:Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView$NoteTitleContract;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView$NoteTitleContract;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/samsung/android/support/senl/nt/app/R$string;->noteslist_title_voice_recording_ps:I

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, p3, p4}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView;->getTitleTime(J)Ljava/lang/String;

    move-result-object p3

    aput-object p3, v1, v0

    invoke-virtual {p1, p2, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    :goto_0
    return-object p2
.end method

.method private getTextContentTitle(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StringFormatInvalid"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView;->mNoteTitleContract:Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView$NoteTitleContract;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView$NoteTitleContract;->getViewMode()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/displaydata/ContentUtils;->isGridViewMode(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView;->mNoteTitleContract:Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView$NoteTitleContract;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView$NoteTitleContract;->getNotesHolderInfo()Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NotesHolderInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NotesHolderInfo;->hasTextOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView;->mNoteTitleContract:Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView$NoteTitleContract;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView$NoteTitleContract;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$string;->noteslist_title_text_ps:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0, p2, p3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView;->getTitleTime(J)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v2, v1

    invoke-virtual {p1, v0, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    const/16 p3, 0x12c

    if-le p2, p3, :cond_1

    const-string p2, "TitleView"

    const-string v0, "getTextContentTitle# textContent subSequence"

    invoke-static {p2, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v1, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    :cond_1
    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/util/NotesHolderUtil;->removeStrikethroughSpan(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "\u200b"

    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/util/NotesHolderUtil;->removeZeroWidthSpace(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "\n"

    const-string v0, ""

    invoke-virtual {p2, p3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView;->mNoteTitleContract:Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView$NoteTitleContract;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView$NoteTitleContract;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/samsung/android/support/senl/nt/app/R$string;->noteslist_title_no_title:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    :cond_3
    return-object p1
.end method

.method private getTitleTime(J)Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/common/util/LocaleUtils;->isKoreaLanguage()Z

    move-result v0

    const-string v1, "MMdd"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private removeNewline(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-interface {p1, v1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private setTitle(Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView$TitleParam;)V
    .locals 6

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView$TitleParam;->getContent()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ge v4, v1, :cond_0

    goto :goto_2

    :cond_0
    invoke-interface {v0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v5, 0xa

    if-eq v4, v5, :cond_2

    invoke-interface {v0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v5, 0x9

    if-eq v4, v5, :cond_2

    invoke-interface {v0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v5, 0x20

    if-ne v4, v5, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView$TitleParam;->getViewMode()I

    move-result v4

    invoke-static {v4}, Lcom/samsung/android/support/senl/nt/base/common/displaydata/ContentUtils;->isSimpleViewMode(I)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-interface {v0, v3, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_2

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {v0, v2, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_3
    :goto_2
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView$TitleParam;->getMaxLine()I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/common/util/LocaleUtils;->isRTLMode()Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "\u200f"

    goto :goto_3

    :cond_4
    const-string v4, "\u200e"

    :goto_3
    new-array v1, v1, [Ljava/lang/CharSequence;

    aput-object v4, v1, v3

    aput-object v0, v1, v2

    invoke-static {v1}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView$TitleParam;->getHighlightText()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/util/NotesHolderUtil;->setHighlightText(Landroid/widget/TextView;Landroid/text/SpannableString;Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v0

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView$TitleParam;->getViewMode()I

    move-result v1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_7

    :cond_6
    :goto_4
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$color;->noteslist_item_title_color:I

    :goto_5
    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_6

    :cond_7
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView$TitleParam;->getIsSupportInvertedBGColor()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView$TitleParam;->getIsSdoc()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView$TitleParam;->getIsLock()Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_4

    :cond_8
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView$TitleParam;->getBackgroundColor()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/samsung/android/support/senl/nt/app/R$color;->composer_main_background_dark:I

    invoke-virtual {v2, v4, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    if-ne v1, v2, :cond_9

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$color;->noteslist_item_title_color_white:I

    goto :goto_5

    :cond_9
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$color;->noteslist_item_text_content_color_has_bg_note:I

    goto :goto_5

    :goto_6
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView$TitleParam;->getBackgroundColor()I

    move-result v1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView$TitleParam;->getIsSdoc()Z

    move-result v2

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView$TitleParam;->getIsSupportInvertedBGColor()Z

    move-result p1

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/samsung/android/support/senl/nt/app/common/widget/HoverPopupTextView;->setTitleOriginalTitle(Ljava/lang/CharSequence;IZZ)V

    return-void
.end method


# virtual methods
.method public init()V
    .locals 1

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public setAutoTitle(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;Ljava/lang/String;I)V
    .locals 8

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getRecommendedTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getRecommendedTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/common/title/AutoTitleCreator$CreationPriority;->find(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/resolver/operation/common/title/AutoTitleCreator$CreationPriority;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView;->mNoteTitleContract:Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView$NoteTitleContract;

    invoke-interface {v5}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView$NoteTitleContract;->getNotesHolderInfo()Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NotesHolderInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NotesHolderInfo;->getLockType()I

    move-result v5

    invoke-static {v5}, Lcom/samsung/android/support/senl/nt/app/common/util/NotesUtils;->isLock(I)Z

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setAutoTitle# uuid : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getUuid()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", hasTextContent : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", recommendedType : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", has recommendedTitle : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    xor-int/2addr v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "TitleView"

    invoke-static {v7, v6}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v5, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView;->mNoteTitleContract:Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView$NoteTitleContract;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView$NoteTitleContract;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$string;->noteslist_title_lock_note:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getStrokeUuid()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView;->mNoteTitleContract:Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView$NoteTitleContract;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView$NoteTitleContract;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->noteslist_title_handwritten_note_ps:I

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getCreatedAt()J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView;->getTitleTime(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getCreatedAt()J

    move-result-wide v2

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView;->getRecommendedTitle(Lcom/samsung/android/support/senl/nt/data/resolver/operation/common/title/AutoTitleCreator$CreationPriority;Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_0

    :cond_3
    if-eqz v3, :cond_4

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getCreatedAt()J

    move-result-wide v0

    invoke-direct {p0, v2, v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView;->getTextContentTitle(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView;->removeNewline(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView;->mNoteTitleContract:Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView$NoteTitleContract;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView$NoteTitleContract;->getViewMode()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/displaydata/ContentUtils;->isGridViewMode(I)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView;->mNoteTitleContract:Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView$NoteTitleContract;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView$NoteTitleContract;->getNotesHolderInfo()Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NotesHolderInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NotesHolderInfo;->hasTextOnly()Z

    move-result v0

    if-nez v0, :cond_5

    move p3, v4

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView;->mNoteTitleContract:Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView$NoteTitleContract;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView$NoteTitleContract;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$string;->noteslist_title_no_title:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    :cond_5
    :goto_0
    const-string v0, "null"

    invoke-virtual {v0, p1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView;->mNoteTitleContract:Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView$NoteTitleContract;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView$NoteTitleContract;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$string;->noteslist_title_no_title:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    :cond_6
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView;->setTitle(Ljava/lang/CharSequence;Ljava/lang/String;I)V

    return-void
.end method

.method public setCoeditAutoTitle(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;Ljava/lang/String;I)V
    .locals 6

    const-string v0, "TitleView"

    const-string v1, "setCoeditAutoTitle"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesCoeditShareReadResolver;->getInstance()Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesCoeditShareReadResolver;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getMdeSpaceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getMdeItemId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesCoeditShareReadResolver;->getCoeditNoteCreatorName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string p1, "setCoeditAutoTitle# userInfo is null"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView;->mNoteTitleContract:Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView$NoteTitleContract;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView$NoteTitleContract;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$string;->noteslist_title_no_title:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView;->mNoteTitleContract:Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView$NoteTitleContract;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView$NoteTitleContract;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$string;->co_edit_note_auto_title:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getCreatedAt()J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView;->getTitleTime(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v1

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView;->setTitle(Ljava/lang/CharSequence;Ljava/lang/String;I)V

    return-void
.end method

.method public setNoteTitleContract(Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView$NoteTitleContract;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView;->mNoteTitleContract:Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView$NoteTitleContract;

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;Ljava/lang/String;I)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView;->mNoteTitleContract:Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView$NoteTitleContract;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView$NoteTitleContract;->getNotesHolderInfo()Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NotesHolderInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;->setTitle(Ljava/lang/CharSequence;)Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView$TitleParam$TitleParamBuilder;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView$TitleParam$TitleParamBuilder;-><init>()V

    invoke-virtual {v1, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView$TitleParam$TitleParamBuilder;->setContent(Ljava/lang/CharSequence;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView$TitleParam$TitleParamBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView$TitleParam$TitleParamBuilder;->setHighlightText(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView$TitleParam$TitleParamBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView;->mNoteTitleContract:Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView$NoteTitleContract;

    invoke-interface {p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView$NoteTitleContract;->getViewMode()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView$TitleParam$TitleParamBuilder;->setViewMode(I)Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView$TitleParam$TitleParamBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView$TitleParam$TitleParamBuilder;->setMaxLine(I)Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView$TitleParam$TitleParamBuilder;

    move-result-object p1

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NotesHolderInfo;->getBackgroundColor()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView$TitleParam$TitleParamBuilder;->setBackgroundColor(I)Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView$TitleParam$TitleParamBuilder;

    move-result-object p1

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NotesHolderInfo;->isSdoc()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView$TitleParam$TitleParamBuilder;->setIsSdoc(Z)Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView$TitleParam$TitleParamBuilder;

    move-result-object p1

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NotesHolderInfo;->getLockType()I

    move-result p2

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/app/common/util/NotesUtils;->isLock(I)Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView$TitleParam$TitleParamBuilder;->setIsLock(Z)Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView$TitleParam$TitleParamBuilder;

    move-result-object p1

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NotesHolderInfo;->isSupportInvertedBGColor()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView$TitleParam$TitleParamBuilder;->setIsSupportInvertedBGColor(Z)Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView$TitleParam$TitleParamBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView$TitleParam$TitleParamBuilder;->build()Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView$TitleParam;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView;->setTitle(Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView$TitleParam;)V

    goto :goto_1

    :cond_1
    :goto_0
    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    return-void
.end method
