.class Lcom/samsung/android/support/senl/cm/base/framework/sem/os/AbsUserHandleCompatImplFactory$UserHandleCompatPureImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/cm/base/framework/sem/os/AbsUserHandleCompatImplFactory$IUserHandleCompatImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/cm/base/framework/sem/os/AbsUserHandleCompatImplFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserHandleCompatPureImpl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/support/senl/cm/base/framework/sem/os/d;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/cm/base/framework/sem/os/AbsUserHandleCompatImplFactory$UserHandleCompatPureImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getUriWithUserId(Landroid/net/Uri;I)Landroid/net/Uri;
    .locals 0

    return-object p1
.end method

.method public getUserId(I)I
    .locals 0

    return p1
.end method

.method public isKnoxMode()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSecureFolderMode()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isUserOwner()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
