.class Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager$Version;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Version"
.end annotation


# instance fields
.field public major:I

.field public minor:I

.field public patch:I

.field public revision:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager$Version;->major:I

    iput p2, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager$Version;->minor:I

    iput p3, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager$Version;->patch:I

    iput p4, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager$Version;->revision:I

    return-void
.end method
