.class public interface abstract Lcom/samsung/android/sdk/mobileservice/SeMobileServiceSession$ServiceConnectionListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/mobileservice/SeMobileServiceSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ServiceConnectionListener"
.end annotation


# static fields
.field public static final STATUS_SERVICE_CONNECTED:I = 0x1

.field public static final STATUS_SERVICE_DISCONNECTED:I = -0x1


# virtual methods
.method public abstract onChanged(ILjava/lang/String;)V
.end method
