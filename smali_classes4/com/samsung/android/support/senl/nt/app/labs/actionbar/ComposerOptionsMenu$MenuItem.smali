.class Lcom/samsung/android/support/senl/nt/app/labs/actionbar/ComposerOptionsMenu$MenuItem;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/labs/actionbar/ComposerOptionsMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MenuItem"
.end annotation


# instance fields
.field public icon:I

.field public title:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/labs/actionbar/ComposerOptionsMenu$MenuItem;->title:I

    iput p2, p0, Lcom/samsung/android/support/senl/nt/app/labs/actionbar/ComposerOptionsMenu$MenuItem;->icon:I

    return-void
.end method
