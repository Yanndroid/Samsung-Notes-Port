.class public Lcom/samsung/android/support/senl/nt/base/common/access/document/DocumentAccessHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/base/common/access/document/DocumentAccessHandler$DocumentAccessContract;
    }
.end annotation


# static fields
.field private static sContract:Lcom/samsung/android/support/senl/nt/base/common/access/document/DocumentAccessHandler$DocumentAccessContract;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContract()Lcom/samsung/android/support/senl/nt/base/common/access/document/DocumentAccessHandler$DocumentAccessContract;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/nt/base/common/access/document/DocumentAccessHandler;->sContract:Lcom/samsung/android/support/senl/nt/base/common/access/document/DocumentAccessHandler$DocumentAccessContract;

    return-object v0
.end method

.method public static setContract(Lcom/samsung/android/support/senl/nt/base/common/access/document/DocumentAccessHandler$DocumentAccessContract;)V
    .locals 0

    sput-object p0, Lcom/samsung/android/support/senl/nt/base/common/access/document/DocumentAccessHandler;->sContract:Lcom/samsung/android/support/senl/nt/base/common/access/document/DocumentAccessHandler$DocumentAccessContract;

    return-void
.end method
