.class public final synthetic Lcom/samsung/android/support/senl/nt/app/settings/common/component/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/samsung/android/support/senl/nt/app/settings/common/component/SettingsBaseFragment;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Landroidx/recyclerview/widget/RecyclerView;

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/support/senl/nt/app/settings/common/component/SettingsBaseFragment;Ljava/lang/String;Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/common/component/a;->a:Lcom/samsung/android/support/senl/nt/app/settings/common/component/SettingsBaseFragment;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/settings/common/component/a;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/app/settings/common/component/a;->c:Landroidx/recyclerview/widget/RecyclerView;

    iput p4, p0, Lcom/samsung/android/support/senl/nt/app/settings/common/component/a;->d:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/common/component/a;->a:Lcom/samsung/android/support/senl/nt/app/settings/common/component/SettingsBaseFragment;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/settings/common/component/a;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/settings/common/component/a;->c:Landroidx/recyclerview/widget/RecyclerView;

    iget v3, p0, Lcom/samsung/android/support/senl/nt/app/settings/common/component/a;->d:I

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/support/senl/nt/app/settings/common/component/SettingsBaseFragment;->a(Lcom/samsung/android/support/senl/nt/app/settings/common/component/SettingsBaseFragment;Ljava/lang/String;Landroidx/recyclerview/widget/RecyclerView;I)V

    return-void
.end method
