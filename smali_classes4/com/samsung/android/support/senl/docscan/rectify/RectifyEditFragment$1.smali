.class Lcom/samsung/android/support/senl/docscan/rectify/RectifyEditFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/navigation/NavigationBarView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/docscan/rectify/RectifyEditFragment;->updateBottomNavigationView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/docscan/rectify/RectifyEditFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/docscan/rectify/RectifyEditFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/docscan/rectify/RectifyEditFragment$1;->this$0:Lcom/samsung/android/support/senl/docscan/rectify/RectifyEditFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNavigationItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1    # Landroid/view/MenuItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/RectifyEditFragment$1;->this$0:Lcom/samsung/android/support/senl/docscan/rectify/RectifyEditFragment;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/docscan/rectify/RectifyEditFragment;->f(Lcom/samsung/android/support/senl/docscan/rectify/RectifyEditFragment;I)Z

    move-result p1

    return p1
.end method
