.class Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/MenuBar$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/MenuBar;-><init>(Landroid/view/ViewGroup;Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/menubar/MenuBarPresenter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/MenuBar;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/MenuBar;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/MenuBar$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/MenuBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/MenuBar;->b()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onChildViewRemoved#"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/MenuBar$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/MenuBar;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/MenuBar;->a(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/MenuBar;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/MenuBar$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/MenuBar;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/MenuBar;->a(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/MenuBar;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->postInvalidate()V

    :cond_0
    return-void
.end method
