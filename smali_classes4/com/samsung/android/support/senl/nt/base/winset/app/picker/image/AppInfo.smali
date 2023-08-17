.class public Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/AppInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static APP_CAMERA:I = 0x1

.field public static APP_GALLERY:I = 0x2

.field public static APP_MORE_APPS:I = 0x3


# instance fields
.field private mAppType:I

.field private mIconDrawable:Landroid/graphics/drawable/Drawable;

.field private mIntent:Landroid/content/Intent;

.field private mPackageName:Ljava/lang/String;

.field private mTitleResource:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/content/Intent;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/AppInfo;->mTitleResource:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/AppInfo;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/AppInfo;->mIntent:Landroid/content/Intent;

    iput p4, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/AppInfo;->mAppType:I

    iput-object p5, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/AppInfo;->mPackageName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/AppInfo;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/AppInfo;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/AppInfo;->mPackageName:Ljava/lang/String;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/AppInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getAppType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/AppInfo;->mAppType:I

    return v0
.end method

.method public getIconDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/AppInfo;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/AppInfo;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/AppInfo;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getTitleString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/AppInfo;->mTitleResource:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
