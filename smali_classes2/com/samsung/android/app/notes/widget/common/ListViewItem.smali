.class public Lcom/samsung/android/app/notes/widget/common/ListViewItem;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "ListViewItem"


# instance fields
.field private final mAppWidgetId:I

.field private mContext:Landroid/content/Context;

.field private mIsDark:Z

.field private mIsUnlock:Z

.field private mMainListEntry:Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;

.field private mUuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;Ljava/lang/String;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/notes/widget/common/ListViewItem;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/samsung/android/app/notes/widget/common/ListViewItem;->mAppWidgetId:I

    iput-object p3, p0, Lcom/samsung/android/app/notes/widget/common/ListViewItem;->mMainListEntry:Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;

    iput-object p4, p0, Lcom/samsung/android/app/notes/widget/common/ListViewItem;->mUuid:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/samsung/android/app/notes/widget/common/ListViewItem;->mIsUnlock:Z

    iput-boolean p6, p0, Lcom/samsung/android/app/notes/widget/common/ListViewItem;->mIsDark:Z

    return-void
.end method

.method private decorateIcons(Landroid/widget/RemoteViews;ZZZ)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "decorateIcons# unlock: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isFavorite: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", hasVoiceRecording: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ListViewItem"

    invoke-static {v1, v0}, Lcom/samsung/android/app/notes/widget/common/log/WidgetLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget v0, Lcom/samsung/android/support/senl/nt/homewidget/R$id;->voice:I

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz p4, :cond_0

    if-eqz p2, :cond_0

    move p2, v1

    goto :goto_0

    :cond_0
    move p2, v2

    :goto_0
    invoke-virtual {p1, v0, p2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    sget p2, Lcom/samsung/android/support/senl/nt/homewidget/R$id;->favorite:I

    if-eqz p3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-virtual {p1, p2, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    return-void
.end method

.method private decorateThumbnail(Landroid/widget/RemoteViews;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;Z)V
    .locals 3

    if-eqz p4, :cond_0

    sget v0, Lcom/samsung/android/support/senl/nt/homewidget/R$drawable;->widget_list_item_thumbnail_rounded_corner_shape_dark:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/samsung/android/support/senl/nt/homewidget/R$drawable;->widget_list_item_thumbnail_rounded_corner_shape:I

    :goto_0
    sget v1, Lcom/samsung/android/support/senl/nt/homewidget/R$id;->thumbnail:I

    const-string v2, "setBackgroundResource"

    invoke-virtual {p1, v1, v2, v0}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/common/ListViewItem;->mContext:Landroid/content/Context;

    invoke-static {v0, p2, p3, p4}, Lcom/samsung/android/app/notes/widget/util/WidgetListUtils;->getThumbnailBitmap(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;Z)Landroid/graphics/Bitmap;

    move-result-object p2

    if-nez p2, :cond_1

    const-string p1, "ListViewItem"

    const-string p2, "decorateThumbnail# bitmap null"

    invoke-static {p1, p2}, Lcom/samsung/android/app/notes/widget/common/log/WidgetLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {p1, v1, p2}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    return-void
.end method

.method private decorateTime(Landroid/widget/RemoteViews;J)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "decorateTime# "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ListViewItem"

    invoke-static {v1, v0}, Lcom/samsung/android/app/notes/widget/common/log/WidgetLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget v0, Lcom/samsung/android/support/senl/nt/homewidget/R$id;->time:I

    iget-object v1, p0, Lcom/samsung/android/app/notes/widget/common/ListViewItem;->mContext:Landroid/content/Context;

    invoke-static {v1, p2, p3}, Lcom/samsung/android/app/notes/widget/util/WidgetListUtils;->getDate(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    return-void
.end method

.method private decorateTitle(Landroid/widget/RemoteViews;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;)V
    .locals 4

    const-string v0, "ListViewItem"

    const-string v1, "decorateTitle#"

    invoke-static {v0, v1}, Lcom/samsung/android/app/notes/widget/common/log/WidgetLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-nez v1, :cond_0

    sget p2, Lcom/samsung/android/support/senl/nt/homewidget/R$id;->title:I

    invoke-virtual {p1, p2, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    invoke-virtual {p1, p2, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    sget p2, Lcom/samsung/android/support/senl/nt/homewidget/R$id;->content:I

    invoke-virtual {p1, p2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/common/ListViewItem;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/samsung/android/app/notes/widget/util/WidgetUtils;->getRecommendTitleText(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;)Ljava/lang/CharSequence;

    move-result-object p2

    sget v0, Lcom/samsung/android/support/senl/nt/homewidget/R$id;->content:I

    invoke-virtual {p1, v0, p2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    sget p2, Lcom/samsung/android/support/senl/nt/homewidget/R$id;->title:I

    invoke-virtual {p1, p2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    invoke-virtual {p1, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :goto_0
    new-instance p2, Lcom/samsung/android/app/notes/widget/theme/NoteListThemeManager;

    invoke-direct {p2}, Lcom/samsung/android/app/notes/widget/theme/NoteListThemeManager;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/common/ListViewItem;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/samsung/android/app/notes/widget/common/ListViewItem;->mAppWidgetId:I

    invoke-virtual {p2, v0, p1, v1}, Lcom/samsung/android/app/notes/widget/theme/NoteListThemeManager;->updateListItemColor(Landroid/content/Context;Landroid/widget/RemoteViews;I)V

    return-void
.end method

.method private setBackground(Landroid/widget/RemoteViews;Z)V
    .locals 2

    if-eqz p2, :cond_0

    sget p2, Lcom/samsung/android/support/senl/nt/homewidget/R$drawable;->widget_list_item_dark_bg_ripple:I

    goto :goto_0

    :cond_0
    sget p2, Lcom/samsung/android/support/senl/nt/homewidget/R$drawable;->widget_list_item_light_bg_ripple:I

    :goto_0
    sget v0, Lcom/samsung/android/support/senl/nt/homewidget/R$id;->widget_list_item_layout:I

    const-string v1, "setBackgroundResource"

    invoke-virtual {p1, v0, v1, p2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    return-void
.end method

.method private setOnClickFillInIntent(Landroid/widget/RemoteViews;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;)V
    .locals 9

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget v2, p0, Lcom/samsung/android/app/notes/widget/common/ListViewItem;->mAppWidgetId:I

    const-string v3, "appWidgetId"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getUuid()Ljava/lang/String;

    move-result-object v2

    const-string v3, "sdoc_uuid"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ln/a;->b()Ln/a;

    move-result-object v3

    invoke-virtual {v3}, Ln/a;->i()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/app/notes/widget/common/ListViewItem;->mContext:Landroid/content/Context;

    invoke-static {v3, v2}, Lv/f;->e(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    :goto_0
    move v8, v2

    new-instance v2, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getMdeSpaceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getMdeGroupId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getMdeOwnerId()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo;->getSpaceId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "ListViewItem"

    const-string v3, "getFillInIntentForStartMemoList# this is mde file"

    invoke-static {p2, v3}, Lcom/samsung/android/app/notes/widget/common/log/WidgetLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;->getInstance()Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;->executeBaseLogics()V

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo;->getSpaceId()Ljava/lang/String;

    move-result-object p2

    const-string v3, "mde_space_id"

    invoke-virtual {v1, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo;->getGroupId()Ljava/lang/String;

    move-result-object p2

    const-string v3, "mde_group_id"

    invoke-virtual {v1, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo;->getOwnerId()Ljava/lang/String;

    move-result-object p2

    const-string v3, "mde_owner_id"

    invoke-virtual {v1, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo;->getCreatorName()Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v3, "writer_name"

    invoke-virtual {v1, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo;->getAccountType()I

    move-result p2

    const-string v2, "account_type"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_1
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    sget p2, Lcom/samsung/android/support/senl/nt/homewidget/R$id;->widget_list_item_layout:I

    invoke-virtual {p1, p2, v0}, Landroid/widget/RemoteViews;->setOnClickFillInIntent(ILandroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public getRemoteViews()Landroid/widget/RemoteViews;
    .locals 5

    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/samsung/android/app/notes/widget/common/ListViewItem;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/samsung/android/support/senl/nt/homewidget/R$layout;->widget_list_item:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iget-boolean v1, p0, Lcom/samsung/android/app/notes/widget/common/ListViewItem;->mIsDark:Z

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/notes/widget/common/ListViewItem;->setBackground(Landroid/widget/RemoteViews;Z)V

    iget-object v1, p0, Lcom/samsung/android/app/notes/widget/common/ListViewItem;->mMainListEntry:Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/notes/widget/common/ListViewItem;->decorateTitle(Landroid/widget/RemoteViews;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;)V

    iget-object v1, p0, Lcom/samsung/android/app/notes/widget/common/ListViewItem;->mMainListEntry:Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getLastModifiedAt()J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/app/notes/widget/common/ListViewItem;->decorateTime(Landroid/widget/RemoteViews;J)V

    iget-boolean v1, p0, Lcom/samsung/android/app/notes/widget/common/ListViewItem;->mIsUnlock:Z

    iget-object v2, p0, Lcom/samsung/android/app/notes/widget/common/ListViewItem;->mMainListEntry:Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getIsFavorite()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iget-object v4, p0, Lcom/samsung/android/app/notes/widget/common/ListViewItem;->mMainListEntry:Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getVrUuid()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    xor-int/2addr v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/android/app/notes/widget/common/ListViewItem;->decorateIcons(Landroid/widget/RemoteViews;ZZZ)V

    iget-object v1, p0, Lcom/samsung/android/app/notes/widget/common/ListViewItem;->mUuid:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/app/notes/widget/common/ListViewItem;->mMainListEntry:Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;

    iget-boolean v3, p0, Lcom/samsung/android/app/notes/widget/common/ListViewItem;->mIsDark:Z

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/android/app/notes/widget/common/ListViewItem;->decorateThumbnail(Landroid/widget/RemoteViews;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;Z)V

    iget-object v1, p0, Lcom/samsung/android/app/notes/widget/common/ListViewItem;->mMainListEntry:Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/notes/widget/common/ListViewItem;->setOnClickFillInIntent(Landroid/widget/RemoteViews;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;)V

    return-object v0
.end method
