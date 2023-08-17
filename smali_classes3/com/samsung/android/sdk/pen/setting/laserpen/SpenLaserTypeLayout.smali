.class public Lcom/samsung/android/sdk/pen/setting/laserpen/SpenLaserTypeLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/pen/setting/laserpen/SpenLaserTypeLayout$OnDataChangedListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_SIZE_LEVEL:I = 0x64

.field public static final LASER_TYPE_LINE:I = 0x1

.field public static final LASER_TYPE_POINT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SpenLaserTypeLayout"


# instance fields
.field private mDataChangedListener:Lcom/samsung/android/sdk/pen/setting/laserpen/SpenLaserTypeLayout$OnDataChangedListener;

.field private mItemClickListener:Landroid/view/View$OnClickListener;

.field private mLinePreview:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreview;

.field private mPointPreview:Landroid/view/View;

.field private mPreviewHelper:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreviewHelper;

.field private mPreviewManager:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreviewManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/laserpen/SpenLaserTypeLayout$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/setting/laserpen/SpenLaserTypeLayout$1;-><init>(Lcom/samsung/android/sdk/pen/setting/laserpen/SpenLaserTypeLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/laserpen/SpenLaserTypeLayout;->mItemClickListener:Landroid/view/View$OnClickListener;

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/laserpen/SpenLaserTypeLayout;->construct(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/sdk/pen/setting/laserpen/SpenLaserTypeLayout;)Lcom/samsung/android/sdk/pen/setting/laserpen/SpenLaserTypeLayout$OnDataChangedListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/laserpen/SpenLaserTypeLayout;->mDataChangedListener:Lcom/samsung/android/sdk/pen/setting/laserpen/SpenLaserTypeLayout$OnDataChangedListener;

    return-object p0
.end method

.method private construct(Landroid/content/Context;)V
    .locals 1

    sget v0, Lcom/samsung/android/spen/R$layout;->setting_laser_pen_type_layout:I

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/sdk/pen/setting/laserpen/SpenLaserTypeLayout;->initView(Landroid/content/Context;I)V

    const-string v0, "com.samsung.android.sdk.pen.pen.preload.LaserPen"

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/sdk/pen/setting/laserpen/SpenLaserTypeLayout;->initPreview(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private initPreview(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreviewHelper;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreviewHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/laserpen/SpenLaserTypeLayout;->mPreviewHelper:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreviewHelper;

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreviewManager;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/laserpen/SpenLaserTypeLayout;->mPreviewHelper:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreviewHelper;

    invoke-direct {v0, v1, p2, v2}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreviewManager;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreviewHelper;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/laserpen/SpenLaserTypeLayout;->mPreviewManager:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreviewManager;

    sget v1, Lcom/samsung/android/spen/R$color;->component_common:I

    invoke-static {p1, v1}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtil;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreviewManager;->setColor(I)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/laserpen/SpenLaserTypeLayout;->mLinePreview:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreview;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/laserpen/SpenLaserTypeLayout;->mPreviewManager:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreviewManager;

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreview;->setPreviewManager(Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreviewManager;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/laserpen/SpenLaserTypeLayout;->mLinePreview:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreview;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x64

    invoke-static {v0, p2, v1}, Lcom/samsung/android/sdk/pen/pen/SpenPenUtil;->convertSizeLevelToDpSize(Landroid/content/Context;Ljava/lang/String;I)F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreview;->setStrokeSize(F)V

    return-void
.end method

.method private initView(Landroid/content/Context;I)V
    .locals 1

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    const/4 v0, 0x1

    invoke-virtual {p1, p2, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    sget p1, Lcom/samsung/android/spen/R$id;->laser_line_view:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreview;

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/laserpen/SpenLaserTypeLayout;->mLinePreview:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreview;

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/laserpen/SpenLaserTypeLayout;->mItemClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget p1, Lcom/samsung/android/spen/R$id;->laser_point_view:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/laserpen/SpenLaserTypeLayout;->mPointPreview:Landroid/view/View;

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/laserpen/SpenLaserTypeLayout;->mItemClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/laserpen/SpenLaserTypeLayout;->mPreviewHelper:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreviewHelper;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreviewHelper;->close()V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/laserpen/SpenLaserTypeLayout;->mPreviewHelper:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreviewHelper;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/laserpen/SpenLaserTypeLayout;->mLinePreview:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreview;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreview;->close()V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/laserpen/SpenLaserTypeLayout;->mLinePreview:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreview;

    :cond_1
    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/laserpen/SpenLaserTypeLayout;->mPointPreview:Landroid/view/View;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/laserpen/SpenLaserTypeLayout;->mDataChangedListener:Lcom/samsung/android/sdk/pen/setting/laserpen/SpenLaserTypeLayout$OnDataChangedListener;

    return-void
.end method

.method public setDataChangedListener(Lcom/samsung/android/sdk/pen/setting/laserpen/SpenLaserTypeLayout$OnDataChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/laserpen/SpenLaserTypeLayout;->mDataChangedListener:Lcom/samsung/android/sdk/pen/setting/laserpen/SpenLaserTypeLayout$OnDataChangedListener;

    return-void
.end method

.method public setType(I)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setType() type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenLaserTypeLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/laserpen/SpenLaserTypeLayout;->mLinePreview:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreview;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/laserpen/SpenLaserTypeLayout;->mPointPreview:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setSelected(Z)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/laserpen/SpenLaserTypeLayout;->mLinePreview:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreview;

    if-ne p1, v2, :cond_2

    move v1, v2

    :cond_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    :cond_3
    :goto_1
    return-void
.end method

.method public setType(II)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/laserpen/SpenLaserTypeLayout;->mLinePreview:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreview;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/laserpen/SpenLaserTypeLayout;->mPointPreview:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/laserpen/SpenLaserTypeLayout;->mPreviewManager:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreviewManager;

    invoke-virtual {v0, p2}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreviewManager;->setColor(I)V

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/laserpen/SpenLaserTypeLayout;->mPointPreview:Landroid/view/View;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    move v2, v0

    :goto_0
    invoke-virtual {p2, v2}, Landroid/view/View;->setSelected(Z)V

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/laserpen/SpenLaserTypeLayout;->mLinePreview:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreview;

    if-ne p1, v1, :cond_2

    move v0, v1

    :cond_2
    invoke-virtual {p2, v0}, Landroid/view/View;->setSelected(Z)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/laserpen/SpenLaserTypeLayout;->mLinePreview:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreview;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_3
    :goto_1
    return-void
.end method
