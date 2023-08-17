.class public Lcom/samsung/android/spr/drawable/Spr;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static mDensity:F

.field private static mDrawableCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/samsung/android/spr/drawable/SprDrawableCache;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/samsung/android/spr/drawable/Spr;->mDrawableCache:Landroid/util/SparseArray;

    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Lcom/samsung/android/spr/drawable/Spr;->mDensity:F

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .locals 4

    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const/4 v3, 0x1

    if-eq v1, v3, :cond_0

    goto :goto_0

    :cond_0
    if-ne v1, v2, :cond_1

    invoke-static {p0, p1, v0, p2}, Lcom/samsung/android/spr/drawable/Spr;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string p1, "No start tag found"

    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .locals 3

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bitmap"

    if-ne v0, v1, :cond_1

    const-string v0, "http://schemas.android.com/apk/res/android"

    const-string/jumbo v1, "src"

    const/4 v2, 0x0

    invoke-interface {p2, v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, v0}, Lcom/samsung/android/spr/drawable/Spr;->isSpr(Landroid/content/res/Resources;I)Z

    move-result v2

    :cond_0
    if-eqz v2, :cond_1

    new-instance v0, Lcom/samsung/android/spr/drawable/SprDrawable;

    invoke-direct {v0}, Lcom/samsung/android/spr/drawable/SprDrawable;-><init>()V

    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .locals 5

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    sget-object v2, Lcom/samsung/android/spr/drawable/Spr;->mDrawableCache:Landroid/util/SparseArray;

    monitor-enter v2

    :try_start_0
    sget v3, Lcom/samsung/android/spr/drawable/Spr;->mDensity:F

    cmpl-float v3, v1, v3

    if-eqz v3, :cond_0

    sput v1, Lcom/samsung/android/spr/drawable/Spr;->mDensity:F

    sget-object v1, Lcom/samsung/android/spr/drawable/Spr;->mDrawableCache:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    sput-object v1, Lcom/samsung/android/spr/drawable/Spr;->mDrawableCache:Landroid/util/SparseArray;

    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v1, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    iget-object v1, v1, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/samsung/android/spr/drawable/Spr;->mDrawableCache:Landroid/util/SparseArray;

    monitor-enter v3

    :try_start_1
    sget-object v2, Lcom/samsung/android/spr/drawable/Spr;->mDrawableCache:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/spr/drawable/SprDrawableCache;

    if-nez v2, :cond_1

    new-instance v2, Lcom/samsung/android/spr/drawable/SprDrawableCache;

    invoke-direct {v2, p0}, Lcom/samsung/android/spr/drawable/SprDrawableCache;-><init>(Landroid/content/res/Resources;)V

    sget-object v4, Lcom/samsung/android/spr/drawable/Spr;->mDrawableCache:Landroid/util/SparseArray;

    invoke-virtual {v4, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    invoke-virtual {v2, p1}, Lcom/samsung/android/spr/drawable/SprDrawableCache;->getInstance(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_2

    monitor-exit v3

    return-object v0

    :cond_2
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, ".bmp"

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, ".spr"

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    invoke-static {p0, p1}, Lcom/samsung/android/spr/drawable/Spr;->isSpr(Landroid/content/res/Resources;I)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {p0, p1}, Lcom/samsung/android/spr/drawable/SprDrawable;->createFromResourceStream(Landroid/content/res/Resources;I)Lcom/samsung/android/spr/drawable/SprDrawable;

    move-result-object v0

    :cond_4
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p0

    invoke-virtual {v2, p1, p0}, Lcom/samsung/android/spr/drawable/SprDrawableCache;->put(ILandroid/graphics/drawable/Drawable$ConstantState;)V

    monitor-exit v3

    return-object v0

    :cond_5
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p0, p1, p2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method

.method public static isSpr(Landroid/content/res/Resources;I)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x3

    new-array v2, v1, [B

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p0

    invoke-virtual {p0, v2, v0, v1}, Ljava/io/InputStream;->read([BII)I

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    aget-byte p0, v2, v0

    const/16 p1, 0x53

    const/4 v1, 0x1

    if-ne p0, p1, :cond_0

    aget-byte p0, v2, v1

    const/16 p1, 0x50

    if-ne p0, p1, :cond_0

    const/4 p0, 0x2

    aget-byte p0, v2, p0

    const/16 p1, 0x52

    if-ne p0, p1, :cond_0

    move v0, v1

    :cond_0
    return v0
.end method
