.class public Lcom/samsung/android/spen/libse/SeHermesServiceManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/spen/libinterface/HermesServiceManagerInterface;


# instance fields
.field private mInfoExtractionManager:Lcom/samsung/android/infoextraction/SemInfoExtractionManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/spen/libse/SeHermesServiceManager;->mInfoExtractionManager:Lcom/samsung/android/infoextraction/SemInfoExtractionManager;

    invoke-direct {p0, p1}, Lcom/samsung/android/spen/libse/SeHermesServiceManager;->isPenFeatureModel(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    new-instance v0, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;

    invoke-direct {v0, p1}, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/spen/libse/SeHermesServiceManager;->mInfoExtractionManager:Lcom/samsung/android/infoextraction/SemInfoExtractionManager;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    throw p1

    :catch_1
    move-exception p1

    throw p1
.end method

.method private isPenFeatureModel(Landroid/content/Context;)Z
    .locals 1

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v0, "com.sec.feature.spen_usp"

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public dismissHermes()V
    .locals 0

    return-void
.end method

.method public showHermes(Ljava/lang/String;Landroid/graphics/Rect;)V
    .locals 0

    return-void
.end method
