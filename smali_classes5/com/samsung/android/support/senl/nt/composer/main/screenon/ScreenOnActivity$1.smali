.class Lcom/samsung/android/support/senl/nt/composer/main/screenon/ScreenOnActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/screenon/ScreenOnActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/screenon/ScreenOnActivity;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/screenon/ScreenOnActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenon/ScreenOnActivity$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/screenon/ScreenOnActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenon/ScreenOnActivity$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/screenon/ScreenOnActivity;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenon/ScreenOnActivity;->d(Lcom/samsung/android/support/senl/nt/composer/main/screenon/ScreenOnActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenon/ScreenOnActivity$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/screenon/ScreenOnActivity;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenon/ScreenOnActivity;->c(Lcom/samsung/android/support/senl/nt/composer/main/screenon/ScreenOnActivity;)Landroid/view/View;

    move-result-object p1

    iget-object p6, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenon/ScreenOnActivity$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/screenon/ScreenOnActivity;

    invoke-static {p6}, Lcom/samsung/android/support/senl/nt/composer/main/screenon/ScreenOnActivity;->e(Lcom/samsung/android/support/senl/nt/composer/main/screenon/ScreenOnActivity;)[I

    move-result-object p6

    invoke-virtual {p1, p6}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenon/ScreenOnActivity$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/screenon/ScreenOnActivity;

    sub-int/2addr p4, p2

    invoke-static {p1, p4}, Lcom/samsung/android/support/senl/nt/composer/main/screenon/ScreenOnActivity;->g(Lcom/samsung/android/support/senl/nt/composer/main/screenon/ScreenOnActivity;I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenon/ScreenOnActivity$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/screenon/ScreenOnActivity;

    sub-int/2addr p5, p3

    invoke-static {p1, p5}, Lcom/samsung/android/support/senl/nt/composer/main/screenon/ScreenOnActivity;->f(Lcom/samsung/android/support/senl/nt/composer/main/screenon/ScreenOnActivity;I)V

    :cond_0
    return-void
.end method
