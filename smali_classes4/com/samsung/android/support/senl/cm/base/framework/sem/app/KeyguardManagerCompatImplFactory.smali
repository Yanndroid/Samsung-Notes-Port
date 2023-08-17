.class public Lcom/samsung/android/support/senl/cm/base/framework/sem/app/KeyguardManagerCompatImplFactory;
.super Lcom/samsung/android/support/senl/cm/base/framework/sem/app/AbsKeyguardManagerCompatImplFactory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/cm/base/framework/sem/app/KeyguardManagerCompatImplFactory$KeyguardManagerCompatSemImpl;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "KeyguardManagerCompatImpl"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/cm/base/framework/sem/app/AbsKeyguardManagerCompatImplFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Z)Lcom/samsung/android/support/senl/cm/base/framework/sem/app/AbsKeyguardManagerCompatImplFactory$IKeyguardManagerCompatImpl;
    .locals 1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/samsung/android/support/senl/cm/base/framework/sem/app/KeyguardManagerCompatImplFactory$KeyguardManagerCompatSemImpl;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/sem/app/KeyguardManagerCompatImplFactory$KeyguardManagerCompatSemImpl;-><init>(Lcom/samsung/android/support/senl/cm/base/framework/sem/app/f;)V

    return-object p1

    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/sem/app/AbsKeyguardManagerCompatImplFactory;->create(Z)Lcom/samsung/android/support/senl/cm/base/framework/sem/app/AbsKeyguardManagerCompatImplFactory$IKeyguardManagerCompatImpl;

    move-result-object p1

    return-object p1
.end method
