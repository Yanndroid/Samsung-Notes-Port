.class Lcom/samsung/android/support/senl/nt/app/main/PhoneMainView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/main/PhoneMainView;->onViewCreated(ILandroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/PhoneMainView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/PhoneMainView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/PhoneMainView$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/PhoneMainView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/PhoneMainView$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/PhoneMainView;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/app/main/MainView;->mMainActivity:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->toolbar:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/badge/NavigateUpHelper;->isSetNavigationIcon(Landroidx/appcompat/widget/Toolbar;)Z

    move-result p1

    const-string v0, "PhoneMainView"

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/PhoneMainView$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/PhoneMainView;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/app/main/MainView;->mNotesFragment:Lcom/samsung/android/support/senl/nt/app/main/noteslist/NotesFragment;

    if-eqz p1, :cond_0

    const-string p1, "Drawer onClick# backPress"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/PhoneMainView$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/PhoneMainView;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/app/main/MainView;->mNotesFragment:Lcom/samsung/android/support/senl/nt/app/main/noteslist/NotesFragment;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/NotesFragment;->onBackKeyDown()Z

    return-void

    :cond_0
    const-string p1, "Drawer onClick# openDrawer"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/PhoneMainView$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/PhoneMainView;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/PhoneMainView;->b(Lcom/samsung/android/support/senl/nt/app/main/PhoneMainView;)Landroidx/drawerlayout/widget/DrawerLayout;

    move-result-object p1

    const v0, 0x800003

    invoke-virtual {p1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->openDrawer(I)V

    return-void
.end method
