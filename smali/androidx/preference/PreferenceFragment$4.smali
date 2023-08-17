.class Landroidx/preference/PreferenceFragment$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/preference/PreferenceFragment;->createOnPreDrawListner()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Landroidx/preference/PreferenceFragment;


# direct methods
.method public constructor <init>(Landroidx/preference/PreferenceFragment;)V
    .locals 0

    iput-object p1, p0, Landroidx/preference/PreferenceFragment$4;->this$0:Landroidx/preference/PreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 7

    iget-object v0, p0, Landroidx/preference/PreferenceFragment$4;->this$0:Landroidx/preference/PreferenceFragment;

    iget-object v0, v0, Landroidx/preference/PreferenceFragment;->mList:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    iget-object v2, p0, Landroidx/preference/PreferenceFragment$4;->this$0:Landroidx/preference/PreferenceFragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v3, v2, Landroid/content/res/Configuration;->screenWidthDp:I

    const/16 v4, 0x140

    if-gt v3, v4, :cond_0

    iget v4, v2, Landroid/content/res/Configuration;->fontScale:F

    const v5, 0x3f8ccccd    # 1.1f

    cmpl-float v4, v4, v5

    if-gez v4, :cond_1

    :cond_0
    const/16 v4, 0x19b

    if-ge v3, v4, :cond_2

    iget v4, v2, Landroid/content/res/Configuration;->fontScale:F

    const v5, 0x3fa66666    # 1.3f

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_2

    :cond_1
    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x2

    :goto_0
    instance-of v5, v0, Landroidx/preference/PreferenceGroupAdapter;

    if-eqz v5, :cond_5

    iget-object v5, p0, Landroidx/preference/PreferenceFragment$4;->this$0:Landroidx/preference/PreferenceFragment;

    move-object v6, v0

    check-cast v6, Landroidx/preference/PreferenceGroupAdapter;

    invoke-static {v5, v6, v4, v3}, Landroidx/preference/PreferenceFragment;->access$100(Landroidx/preference/PreferenceFragment;Landroidx/preference/PreferenceGroupAdapter;II)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Landroidx/preference/PreferenceFragment$4;->this$0:Landroidx/preference/PreferenceFragment;

    invoke-static {v3, v4}, Landroidx/preference/PreferenceFragment;->access$202(Landroidx/preference/PreferenceFragment;I)I

    move v3, v1

    :goto_1
    invoke-virtual {v6}, Landroidx/preference/PreferenceGroupAdapter;->getItemCount()I

    move-result v4

    if-ge v3, v4, :cond_5

    invoke-virtual {v6, v3}, Landroidx/preference/PreferenceGroupAdapter;->getItem(I)Landroidx/preference/Preference;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroidx/preference/PreferenceGroupAdapter;->isSwitchLayout(Landroidx/preference/Preference;)Z

    move-result v5

    if-eqz v5, :cond_4

    instance-of v5, v4, Landroidx/preference/SwitchPreferenceCompat;

    if-nez v5, :cond_3

    instance-of v4, v4, Landroidx/preference/SwitchPreference;

    if-eqz v4, :cond_4

    :cond_3
    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    iget-object v0, p0, Landroidx/preference/PreferenceFragment$4;->this$0:Landroidx/preference/PreferenceFragment;

    iget v2, v2, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-static {v0, v2}, Landroidx/preference/PreferenceFragment;->access$302(Landroidx/preference/PreferenceFragment;I)I

    iget-object v0, p0, Landroidx/preference/PreferenceFragment$4;->this$0:Landroidx/preference/PreferenceFragment;

    iget-object v0, v0, Landroidx/preference/PreferenceFragment;->mList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object v0, p0, Landroidx/preference/PreferenceFragment$4;->this$0:Landroidx/preference/PreferenceFragment;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroidx/preference/PreferenceFragment;->access$002(Landroidx/preference/PreferenceFragment;Landroid/view/ViewTreeObserver$OnPreDrawListener;)Landroid/view/ViewTreeObserver$OnPreDrawListener;

    :cond_6
    return v1
.end method
