.class public Lcom/samsung/android/support/senl/cm/base/framework/constructor/SystemConstructor;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createJobInfoBuilder(ILandroid/content/ComponentName;)Landroid/app/job/JobInfo$Builder;
    .locals 1

    new-instance v0, Landroid/app/job/JobInfo$Builder;

    invoke-direct {v0, p0, p1}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    return-object v0
.end method
