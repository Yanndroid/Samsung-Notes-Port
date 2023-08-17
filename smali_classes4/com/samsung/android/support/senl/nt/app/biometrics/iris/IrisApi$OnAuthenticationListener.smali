.class public interface abstract Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi$OnAuthenticationListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnAuthenticationListener"
.end annotation


# static fields
.field public static final ERROR_CANCELED:I

.field public static final ERROR_LOCKOUT:I

.field public static final ERROR_LOCKOUT_PERMANENT:I

.field public static final ERROR_TIMEOUT:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    const/4 v2, 0x3

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    :goto_0
    sput v2, Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi$OnAuthenticationListener;->ERROR_TIMEOUT:I

    if-lt v0, v1, :cond_1

    const/4 v2, 0x7

    goto :goto_1

    :cond_1
    const/4 v2, 0x6

    :goto_1
    sput v2, Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi$OnAuthenticationListener;->ERROR_LOCKOUT:I

    if-lt v0, v1, :cond_2

    const/16 v2, 0x9

    goto :goto_2

    :cond_2
    const/16 v2, 0x10

    :goto_2
    sput v2, Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi$OnAuthenticationListener;->ERROR_LOCKOUT_PERMANENT:I

    if-lt v0, v1, :cond_3

    const/4 v0, 0x5

    goto :goto_3

    :cond_3
    const/4 v0, 0x4

    :goto_3
    sput v0, Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi$OnAuthenticationListener;->ERROR_CANCELED:I

    return-void
.end method


# virtual methods
.method public abstract onAuthenticationError(ILjava/lang/CharSequence;)V
.end method

.method public abstract onAuthenticationFailed()V
.end method

.method public abstract onAuthenticationHelp(Ljava/lang/CharSequence;)V
.end method

.method public abstract onAuthenticationSucceeded()V
.end method

.method public abstract onUsePasswordClicked()V
.end method
