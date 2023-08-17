.class public abstract Lcom/samsung/android/support/senl/cm/base/framework/sem/app/AbsKeyguardManagerCompatImplFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/cm/base/framework/sem/app/AbsKeyguardManagerCompatImplFactory$KeyguardManagerCompatPureImpl;,
        Lcom/samsung/android/support/senl/cm/base/framework/sem/app/AbsKeyguardManagerCompatImplFactory$IKeyguardManagerCompatImpl;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Z)Lcom/samsung/android/support/senl/cm/base/framework/sem/app/AbsKeyguardManagerCompatImplFactory$IKeyguardManagerCompatImpl;
    .locals 1

    new-instance p1, Lcom/samsung/android/support/senl/cm/base/framework/sem/app/AbsKeyguardManagerCompatImplFactory$KeyguardManagerCompatPureImpl;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/sem/app/AbsKeyguardManagerCompatImplFactory$KeyguardManagerCompatPureImpl;-><init>(Lcom/samsung/android/support/senl/cm/base/framework/sem/app/b;)V

    return-object p1
.end method
