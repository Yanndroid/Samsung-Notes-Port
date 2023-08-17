.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/holder/AddedMenuViewHolder$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/holder/AddedMenuViewHolder;-><init>(Landroid/view/View;Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/listener/OnItemActionListener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/holder/AddedMenuViewHolder;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/holder/AddedMenuViewHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/holder/AddedMenuViewHolder$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/holder/AddedMenuViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 p1, 0x1

    new-array p1, p1, [Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;

    sget-object v0, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;->Menu:Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;

    const/4 v1, 0x0

    aput-object v0, p1, v1

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper;->isValidEvent([Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-wide/16 v1, 0x3e8

    invoke-static {v1, v2, v0}, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper;->setHoldingEventTime(JLcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/holder/AddedMenuViewHolder$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/holder/AddedMenuViewHolder;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/holder/TemplateCommonViewHolder;->mItemActionListener:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/listener/OnItemActionListener;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/listener/OnItemActionListener;->onAddTemplate()V

    const-string p1, "401"

    const-string v0, "3512"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/NotesSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
