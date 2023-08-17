.class public Lcom/samsung/android/sdk/pen/view/SpenDisplay;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DISPLAY_CATEGORY_BUILTIN:Ljava/lang/String; = "com.samsung.android.hardware.display.category.BUILTIN"

.field public static final IS_ENG_BUILD:Z

.field private static final TAG:Ljava/lang/String; = "SpenDisplay"


# instance fields
.field public bitmapHeight:I

.field public bitmapWidth:I

.field public handle:J

.field public heightPixels:I

.field public widthPixels:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/sdk/pen/view/SpenDisplay;->IS_ENG_BUILD:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {v2, v3}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    const-string v4, "display"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/display/DisplayManager;

    const-string v5, "com.samsung.android.hardware.display.category.BUILTIN"

    invoke-virtual {v4, v5}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DisplayMetrics WidthPixels : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", HeightPixels : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "SpenDisplay"

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v5, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v5, v0, Lcom/samsung/android/sdk/pen/view/SpenDisplay;->widthPixels:I

    iget v8, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v8, v0, Lcom/samsung/android/sdk/pen/view/SpenDisplay;->heightPixels:I

    if-ge v5, v8, :cond_0

    goto :goto_0

    :cond_0
    move v5, v8

    :goto_0
    array-length v8, v4

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v8, :cond_3

    aget-object v10, v4, v9

    new-instance v11, Landroid/util/DisplayMetrics;

    invoke-direct {v11}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {v10, v11}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    iget v10, v11, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v12, v11, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v10, v12, :cond_1

    move v13, v12

    goto :goto_2

    :cond_1
    move v13, v10

    :goto_2
    if-ge v5, v13, :cond_2

    iput v10, v0, Lcom/samsung/android/sdk/pen/view/SpenDisplay;->widthPixels:I

    iput v12, v0, Lcom/samsung/android/sdk/pen/view/SpenDisplay;->heightPixels:I

    :cond_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Display info WidthPixels : "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v11, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v11, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Apply display info WidthPixels : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/samsung/android/sdk/pen/view/SpenDisplay;->widthPixels:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/samsung/android/sdk/pen/view/SpenDisplay;->heightPixels:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Current display displayMetrics.WidthPixels : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", displayMetrics.HeightPixels : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/sdk/pen/view/SpenConfiguration;->isTabletUX(Landroid/content/Context;)Z

    move-result v1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isTablet : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v8, v0, Lcom/samsung/android/sdk/pen/view/SpenDisplay;->widthPixels:I

    iget v9, v0, Lcom/samsung/android/sdk/pen/view/SpenDisplay;->heightPixels:I

    iget v10, v3, Landroid/util/DisplayMetrics;->density:F

    iget v11, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v12, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v13, v5, Landroid/util/DisplayMetrics;->density:F

    iget v14, v5, Landroid/util/DisplayMetrics;->scaledDensity:F

    iget v15, v5, Landroid/util/DisplayMetrics;->densityDpi:I

    iget v3, v5, Landroid/util/DisplayMetrics;->xdpi:F

    iget v6, v5, Landroid/util/DisplayMetrics;->ydpi:F

    invoke-virtual {v4}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v18

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v19

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v2}, Landroid/view/Display;->getAppVsyncOffsetNanos()J

    move-result-wide v22

    move/from16 v16, v3

    move/from16 v17, v6

    move/from16 v20, v4

    move/from16 v21, v1

    invoke-static/range {v8 .. v23}, Lcom/samsung/android/sdk/pen/view/SpenDisplay;->Native_init(IIFIIFFIFFIIIZJ)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/samsung/android/sdk/pen/view/SpenDisplay;->handle:J

    iget v1, v0, Lcom/samsung/android/sdk/pen/view/SpenDisplay;->widthPixels:I

    iget v2, v0, Lcom/samsung/android/sdk/pen/view/SpenDisplay;->heightPixels:I

    if-ge v1, v2, :cond_4

    goto :goto_3

    :cond_4
    move v1, v2

    :goto_3
    iput v1, v0, Lcom/samsung/android/sdk/pen/view/SpenDisplay;->bitmapWidth:I

    int-to-float v2, v1

    iget v3, v5, Landroid/util/DisplayMetrics;->xdpi:F

    div-float/2addr v2, v3

    int-to-float v3, v1

    const/high16 v4, 0x43fa0000    # 500.0f

    mul-float/2addr v2, v4

    cmpg-float v3, v3, v2

    if-gez v3, :cond_5

    goto :goto_4

    :cond_5
    float-to-int v1, v2

    :goto_4
    iput v1, v0, Lcom/samsung/android/sdk/pen/view/SpenDisplay;->bitmapWidth:I

    int-to-float v1, v1

    const/high16 v2, 0x41800000    # 16.0f

    mul-float/2addr v1, v2

    const/high16 v2, 0x41100000    # 9.0f

    div-float/2addr v1, v2

    const/high16 v2, 0x3fc00000    # 1.5f

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    iput v1, v0, Lcom/samsung/android/sdk/pen/view/SpenDisplay;->bitmapHeight:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BitmapWidth : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/samsung/android/sdk/pen/view/SpenDisplay;->bitmapWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", BitmapHeight : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/samsung/android/sdk/pen/view/SpenDisplay;->bitmapHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/sdk/pen/view/SpenDisplay;->updateDebugLevel()V

    return-void
.end method

.method private static native Native_copy(JJ)V
.end method

.method private static native Native_finalize(J)V
.end method

.method private static native Native_init(IIFIIFFIFFIIIZJ)J
.end method

.method private static native Native_setDebugLevel(JI)V
.end method

.method private static native Native_updateScreenOrientation(JI)V
.end method

.method public static getDebugLevel()I
    .locals 7

    sget-boolean v0, Lcom/samsung/android/sdk/pen/view/SpenDisplay;->IS_ENG_BUILD:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "getInt"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v1

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "persist.sys.spensdk.debug"

    aput-object v4, v3, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return v1
.end method


# virtual methods
.method public close()V
    .locals 5

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/view/SpenDisplay;->handle:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/view/SpenDisplay;->Native_finalize(J)V

    :cond_0
    iput-wide v2, p0, Lcom/samsung/android/sdk/pen/view/SpenDisplay;->handle:J

    return-void
.end method

.method public copy(Lcom/samsung/android/sdk/pen/view/SpenDisplay;)V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/view/SpenDisplay;->handle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    iget-wide v2, p1, Lcom/samsung/android/sdk/pen/view/SpenDisplay;->handle:J

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/sdk/pen/view/SpenDisplay;->Native_copy(JJ)V

    :cond_0
    return-void
.end method

.method public updateDebugLevel()V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/view/SpenDisplay;->handle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/view/SpenDisplay;->getDebugLevel()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/sdk/pen/view/SpenDisplay;->Native_setDebugLevel(JI)V

    :cond_0
    return-void
.end method

.method public updateScreenOrientation(Landroid/content/Context;)V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/view/SpenDisplay;->handle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/view/SpenDisplay;->handle:J

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/pen/view/SpenDisplay;->Native_updateScreenOrientation(JI)V

    :cond_0
    return-void
.end method
