.class Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarAnimation;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final SCALE_DOWN_ANIMATION_TO_LEVEL:I = 0x1e14

.field private static final SCALE_DURATION:I = 0xfa

.field private static final SCALE_UP_ANIMATION_TO_LEVEL:I = 0x2710

.field private static final TAG:Ljava/lang/String; = "SpenSeekBarAnimation"


# instance fields
.field private mInitComplete:Z

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mThumbColorDrawable:Landroid/graphics/drawable/ScaleDrawable;

.field private mThumbStrokeDrawable:Landroid/graphics/drawable/ScaleDrawable;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarAnimation;->mInitComplete:Z

    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarAnimation;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarAnimation;->setScale(Z)V

    return-void
.end method

.method public static synthetic access$100(Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarAnimation;)Landroid/graphics/drawable/ScaleDrawable;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarAnimation;->mThumbColorDrawable:Landroid/graphics/drawable/ScaleDrawable;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarAnimation;)Landroid/graphics/drawable/ScaleDrawable;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarAnimation;->mThumbStrokeDrawable:Landroid/graphics/drawable/ScaleDrawable;

    return-object p0
.end method

.method private setScale(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarAnimation;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setSelected(Z)V

    :cond_0
    return-void
.end method

.method private setThumbAnimation(Z)V
    .locals 4

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarAnimation;->mInitComplete:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setThumbAnimation() scaleUp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenSeekBarAnimation"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarAnimation;->mThumbColorDrawable:Landroid/graphics/drawable/ScaleDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ScaleDrawable;->getLevel()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz p1, :cond_1

    new-array p1, v3, [I

    aput v0, p1, v2

    const/16 v0, 0x2710

    aput v0, p1, v1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarAnimation$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarAnimation$1;-><init>(Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarAnimation;)V

    goto :goto_0

    :cond_1
    new-array p1, v3, [I

    aput v0, p1, v2

    const/16 v0, 0x1e14

    aput v0, p1, v1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarAnimation$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarAnimation$2;-><init>(Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarAnimation;)V

    :goto_0
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v0, 0xfa

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilAnimation;->getInterpolator(I)Landroid/view/animation/PathInterpolator;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarAnimation$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarAnimation$3;-><init>(Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarAnimation;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarAnimation;->mSeekBar:Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarAnimation;->mThumbStrokeDrawable:Landroid/graphics/drawable/ScaleDrawable;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarAnimation;->mThumbColorDrawable:Landroid/graphics/drawable/ScaleDrawable;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarAnimation;->mInitComplete:Z

    return-void
.end method

.method public setOnTouchEvent(Landroid/view/MotionEvent;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarAnimation;->mSeekBar:Landroid/widget/SeekBar;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarAnimation;->setThumbAnimation(Z)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarAnimation;->setThumbAnimation(Z)V

    :goto_0
    return-void
.end method

.method public setTarget(Landroid/widget/SeekBar;Landroid/graphics/drawable/ScaleDrawable;Landroid/graphics/drawable/ScaleDrawable;)Z
    .locals 0

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarAnimation;->mSeekBar:Landroid/widget/SeekBar;

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarAnimation;->mThumbColorDrawable:Landroid/graphics/drawable/ScaleDrawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/ScaleDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x18

    if-ge p1, p2, :cond_0

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarAnimation;->mThumbColorDrawable:Landroid/graphics/drawable/ScaleDrawable;

    const/16 p2, 0x1e14

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/ScaleDrawable;->setLevel(I)Z

    :cond_0
    instance-of p1, p3, Landroid/graphics/drawable/ScaleDrawable;

    if-eqz p1, :cond_1

    iput-object p3, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarAnimation;->mThumbStrokeDrawable:Landroid/graphics/drawable/ScaleDrawable;

    :cond_1
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarAnimation;->mInitComplete:Z

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method
