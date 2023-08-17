.class public Lcom/samsung/android/support/senl/nt/app/labs/actionbar/ComposerOptionsMenu;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/app/labs/actionbar/ComposerOptionsMenu$MenuItem;
    }
.end annotation


# instance fields
.field public menuItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/app/labs/actionbar/ComposerOptionsMenu$MenuItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/labs/actionbar/ComposerOptionsMenu;->menuItemList:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/labs/actionbar/ComposerOptionsMenu$MenuItem;

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$string;->action_edit:I

    sget v3, Lcom/samsung/android/support/senl/nt/app/R$drawable;->comp_option_menu_ic_edit:I

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/support/senl/nt/app/labs/actionbar/ComposerOptionsMenu$MenuItem;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/labs/actionbar/ComposerOptionsMenu;->menuItemList:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/labs/actionbar/ComposerOptionsMenu$MenuItem;

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$string;->composer_sort_pages:I

    sget v3, Lcom/samsung/android/support/senl/nt/app/R$drawable;->comp_appbar_ic_tablet_sort_page:I

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/support/senl/nt/app/labs/actionbar/ComposerOptionsMenu$MenuItem;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/labs/actionbar/ComposerOptionsMenu;->menuItemList:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/labs/actionbar/ComposerOptionsMenu$MenuItem;

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$string;->action_search:I

    sget v4, Lcom/samsung/android/support/senl/nt/app/R$drawable;->comp_search_ic:I

    invoke-direct {v1, v2, v4}, Lcom/samsung/android/support/senl/nt/app/labs/actionbar/ComposerOptionsMenu$MenuItem;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/labs/actionbar/ComposerOptionsMenu;->menuItemList:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/labs/actionbar/ComposerOptionsMenu$MenuItem;

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$string;->action_share:I

    sget v4, Lcom/samsung/android/support/senl/nt/app/R$drawable;->comp_appbar_ic_share:I

    invoke-direct {v1, v2, v4}, Lcom/samsung/android/support/senl/nt/app/labs/actionbar/ComposerOptionsMenu$MenuItem;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/labs/actionbar/ComposerOptionsMenu;->menuItemList:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/labs/actionbar/ComposerOptionsMenu$MenuItem;

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$string;->save_as:I

    sget v4, Lcom/samsung/android/support/senl/nt/app/R$drawable;->comp_appbar_ic_attach:I

    invoke-direct {v1, v2, v4}, Lcom/samsung/android/support/senl/nt/app/labs/actionbar/ComposerOptionsMenu$MenuItem;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/labs/actionbar/ComposerOptionsMenu;->menuItemList:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/labs/actionbar/ComposerOptionsMenu$MenuItem;

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$string;->composer_add_to_favorite:I

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/support/senl/nt/app/labs/actionbar/ComposerOptionsMenu$MenuItem;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/labs/actionbar/ComposerOptionsMenu;->menuItemList:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/labs/actionbar/ComposerOptionsMenu$MenuItem;

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$string;->composer_add_tag:I

    sget v3, Lcom/samsung/android/support/senl/nt/app/R$drawable;->btn_expand:I

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/support/senl/nt/app/labs/actionbar/ComposerOptionsMenu$MenuItem;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/labs/actionbar/ComposerOptionsMenu;->menuItemList:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/labs/actionbar/ComposerOptionsMenu$MenuItem;

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$string;->composer_pin_to_homescreen:I

    sget v3, Lcom/samsung/android/support/senl/nt/app/R$drawable;->template_editor_zoom_in:I

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/support/senl/nt/app/labs/actionbar/ComposerOptionsMenu$MenuItem;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/labs/actionbar/ComposerOptionsMenu;->menuItemList:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/labs/actionbar/ComposerOptionsMenu$MenuItem;

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$string;->composer_send_to_reminder:I

    sget v3, Lcom/samsung/android/support/senl/nt/app/R$drawable;->selection_rectangle:I

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/support/senl/nt/app/labs/actionbar/ComposerOptionsMenu$MenuItem;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/labs/actionbar/ComposerOptionsMenu;->menuItemList:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/labs/actionbar/ComposerOptionsMenu$MenuItem;

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$string;->action_print:I

    sget v3, Lcom/samsung/android/support/senl/nt/app/R$drawable;->iris_recognize_fingerprint:I

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/support/senl/nt/app/labs/actionbar/ComposerOptionsMenu$MenuItem;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/app/labs/actionbar/ComposerOptionsMenu$MenuItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/labs/actionbar/ComposerOptionsMenu;->menuItemList:Ljava/util/List;

    return-object v0
.end method
