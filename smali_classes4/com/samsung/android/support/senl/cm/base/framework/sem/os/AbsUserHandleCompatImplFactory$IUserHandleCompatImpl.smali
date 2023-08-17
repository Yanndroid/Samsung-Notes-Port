.class public interface abstract Lcom/samsung/android/support/senl/cm/base/framework/sem/os/AbsUserHandleCompatImplFactory$IUserHandleCompatImpl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/cm/base/framework/sem/os/AbsUserHandleCompatImplFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IUserHandleCompatImpl"
.end annotation


# virtual methods
.method public abstract getUriWithUserId(Landroid/net/Uri;I)Landroid/net/Uri;
.end method

.method public abstract getUserId(I)I
.end method

.method public abstract isKnoxMode()Z
.end method

.method public abstract isSecureFolderMode()Z
.end method

.method public abstract isUserOwner()Z
.end method
