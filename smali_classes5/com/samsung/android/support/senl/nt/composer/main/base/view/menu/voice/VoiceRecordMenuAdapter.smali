.class public Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordMenuAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordMenuAdapter$LongPressListener;,
        Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordMenuAdapter$VoiceMenuViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordMenuAdapter$VoiceMenuViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mBgColor:I

.field private final mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/voice/VoiceMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mListener:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordMenuAdapter$LongPressListener;

.field private final mPlayingColor:I

.field private final mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordMenuPresenter;

.field private mSelectMode:Z

.field private mTextColor:I

.field private final mTransparentColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordMenuPresenter;Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordMenuAdapter$LongPressListener;)V
    .locals 1

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordMenuAdapter;->mSelectMode:Z

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordMenuPresenter;->getItemList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordMenuAdapter;->mData:Ljava/util/List;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordMenuAdapter;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordMenuPresenter;

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordMenuAdapter;->mListener:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordMenuAdapter$LongPressListener;

    const p2, 0x106000d

    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    iput p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordMenuAdapter;->mTransparentColor:I

    sget p2, Lcom/samsung/android/support/senl/nt/composer/R$color;->composer_voice_menu_text_playing_item_color:I

    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordMenuAdapter;->mPlayingColor:I

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordMenuAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordMenuAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, p1, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordMenuAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/voice/VoiceMenuItem;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordMenuAdapter$VoiceMenuViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordMenuAdapter;->onBindViewHolder(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordMenuAdapter$VoiceMenuViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordMenuAdapter$VoiceMenuViewHolder;I)V
    .locals 5
    .param p1    # Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordMenuAdapter$VoiceMenuViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordMenuAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/voice/VoiceMenuItem;

    iget-object v0, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordMenuAdapter$VoiceMenuViewHolder;->titleView:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/voice/VoiceMenuItem;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/voice/VoiceMenuItem;->getPlayingVisible()Z

    move-result v0

    iget-object v1, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordMenuAdapter$VoiceMenuViewHolder;->createDateView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/DateTimeUtil;->isTimeDisplayFor24hour(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "MM.dd HH:mm"

    goto :goto_0

    :cond_0
    const-string v1, "MM.dd hh:mm"

    :goto_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/util/Date;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/voice/VoiceMenuItem;->getCreateDate()J

    move-result-wide v3

    invoke-direct {v1, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordMenuAdapter$VoiceMenuViewHolder;->createDateView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordMenuAdapter$VoiceMenuViewHolder;->playTimeView:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/voice/VoiceMenuItem;->getPlayTime()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceUtil;->changeTimeType(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceUtil;->createTimeString(IZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordMenuAdapter;->mSelectMode:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordMenuAdapter;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordMenuPresenter;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/voice/VoiceMenuItem;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordMenuPresenter;->isContainDeleteRecordItem(Ljava/lang/String;)Z

    move-result p2

    iget-object v1, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordMenuAdapter$VoiceMenuViewHolder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, p2}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1

    :cond_1
    iget-object p2, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordMenuAdapter$VoiceMenuViewHolder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {p2, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    move p2, v2

    :goto_1
    iget-object v1, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordMenuAdapter$VoiceMenuViewHolder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->jumpDrawablesToCurrentState()V

    iget-object v1, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordMenuAdapter$VoiceMenuViewHolder;->checkBox:Landroid/widget/CheckBox;

    iget-boolean v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordMenuAdapter;->mSelectMode:Z

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    const/16 v2, 0x8

    :goto_2
    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    if-eqz p2, :cond_3

    iget p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordMenuAdapter;->mBgColor:I

    goto :goto_3

    :cond_3
    iget p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordMenuAdapter;->mTransparentColor:I

    :goto_3
    iget-object v1, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordMenuAdapter$VoiceMenuViewHolder;->background:Landroid/view/View;

    invoke-virtual {v1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object p2, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordMenuAdapter$VoiceMenuViewHolder;->titleView:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordMenuAdapter;->mPlayingColor:I

    goto :goto_4

    :cond_4
    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordMenuAdapter;->mTextColor:I

    const/16 v1, 0xb3

    invoke-static {v0, v1}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v0

    :goto_4
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p2, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordMenuAdapter$VoiceMenuViewHolder;->createDateView:Landroid/widget/TextView;

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordMenuAdapter;->mTextColor:I

    const/16 v1, 0x80

    invoke-static {v0, v1}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordMenuAdapter$VoiceMenuViewHolder;->playTimeView:Landroid/widget/TextView;

    iget p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordMenuAdapter;->mTextColor:I

    invoke-static {p2, v1}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordMenuAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordMenuAdapter$VoiceMenuViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordMenuAdapter$VoiceMenuViewHolder;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$layout;->comp_voice_record_item:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordMenuAdapter$VoiceMenuViewHolder;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordMenuAdapter;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordMenuPresenter;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordMenuAdapter;->mListener:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordMenuAdapter$LongPressListener;

    invoke-direct {p2, p1, v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordMenuAdapter$VoiceMenuViewHolder;-><init>(Landroid/view/View;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordMenuPresenter;Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordMenuAdapter$LongPressListener;)V

    return-object p2
.end method

.method public setSelectMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordMenuAdapter;->mSelectMode:Z

    return-void
.end method

.method public updateColorTheme(Landroid/content/Context;Z)V
    .locals 0

    if-eqz p2, :cond_0

    sget p2, Lcom/samsung/android/support/senl/nt/composer/R$color;->composer_voice_item_selected_background_dark_color:I

    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    iput p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordMenuAdapter;->mBgColor:I

    sget p2, Lcom/samsung/android/support/senl/nt/composer/R$color;->composer_default_button_color_dark:I

    goto :goto_0

    :cond_0
    sget p2, Lcom/samsung/android/support/senl/nt/composer/R$color;->composer_voice_item_selected_background_color:I

    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    iput p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordMenuAdapter;->mBgColor:I

    sget p2, Lcom/samsung/android/support/senl/nt/composer/R$color;->composer_default_button_color_light:I

    :goto_0
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordMenuAdapter;->mTextColor:I

    return-void
.end method
