.class public Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/rotation/RotationModel;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ROTATION_UNDEFINED:I = -0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDecorView:Landroid/view/View;

.field private mOrientationListener:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/rotation/IRotationModel;

.field private mRotation:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "RotationModel"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/util/SOLogger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/rotation/RotationModel;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/rotation/RotationModel;->mRotation:I

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/rotation/RotationModel;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/rotation/RotationModel;->mDecorView:Landroid/view/View;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/rotation/RotationModel;)Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/rotation/IRotationModel;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/rotation/RotationModel;->mOrientationListener:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/rotation/IRotationModel;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/rotation/RotationModel;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/rotation/RotationModel;->mRotation:I

    return p0
.end method

.method public static bridge synthetic d(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/rotation/RotationModel;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/rotation/RotationModel;->mRotation:I

    return-void
.end method

.method public static bridge synthetic e()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/rotation/RotationModel;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getRotation()I
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/rotation/RotationModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRotation# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/rotation/RotationModel;->mRotation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/rotation/RotationModel;->mRotation:I

    return v0
.end method

.method public init(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/rotation/IRotationModel;Landroid/view/View;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/rotation/RotationModel;->TAG:Ljava/lang/String;

    const-string v1, "init"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/rotation/RotationModel;->mOrientationListener:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/rotation/IRotationModel;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/rotation/RotationModel;->mDecorView:Landroid/view/View;

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/ConfigurationModel;->hasSWNavigation()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/ConfigurationModel;->isSupportRotation()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/ConfigurationModel;->isSupportNavigationRotation()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/rotation/RotationModel;->mDecorView:Landroid/view/View;

    new-instance p2, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/rotation/RotationModel$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/rotation/RotationModel$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/rotation/RotationModel;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    :cond_0
    return-void
.end method
