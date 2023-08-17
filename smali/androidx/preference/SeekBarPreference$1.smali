.class Landroidx/preference/SeekBarPreference$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/widget/SeslSeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/preference/SeekBarPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Landroidx/preference/SeekBarPreference;


# direct methods
.method public constructor <init>(Landroidx/preference/SeekBarPreference;)V
    .locals 0

    iput-object p1, p0, Landroidx/preference/SeekBarPreference$1;->this$0:Landroidx/preference/SeekBarPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroidx/appcompat/widget/SeslSeekBar;IZ)V
    .locals 2

    if-eqz p3, :cond_1

    iget-object v0, p0, Landroidx/preference/SeekBarPreference$1;->this$0:Landroidx/preference/SeekBarPreference;

    iget-boolean v1, v0, Landroidx/preference/SeekBarPreference;->mUpdatesContinuously:Z

    if-nez v1, :cond_0

    iget-boolean v1, v0, Landroidx/preference/SeekBarPreference;->mTrackingTouch:Z

    if-nez v1, :cond_1

    :cond_0
    invoke-static {v0, p1}, Landroidx/preference/SeekBarPreference;->access$000(Landroidx/preference/SeekBarPreference;Landroidx/appcompat/widget/SeslSeekBar;)V

    :cond_1
    iget-object v0, p0, Landroidx/preference/SeekBarPreference$1;->this$0:Landroidx/preference/SeekBarPreference;

    invoke-static {v0}, Landroidx/preference/SeekBarPreference;->access$100(Landroidx/preference/SeekBarPreference;)Landroidx/preference/SeekBarPreference$OnSeekBarPreferenceChangeListener;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/preference/SeekBarPreference$1;->this$0:Landroidx/preference/SeekBarPreference;

    invoke-static {v0}, Landroidx/preference/SeekBarPreference;->access$100(Landroidx/preference/SeekBarPreference;)Landroidx/preference/SeekBarPreference$OnSeekBarPreferenceChangeListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroidx/preference/SeekBarPreference$OnSeekBarPreferenceChangeListener;->onProgressChanged(Landroidx/appcompat/widget/SeslSeekBar;IZ)V

    :cond_2
    return-void
.end method

.method public onStartTrackingTouch(Landroidx/appcompat/widget/SeslSeekBar;)V
    .locals 2

    iget-object v0, p0, Landroidx/preference/SeekBarPreference$1;->this$0:Landroidx/preference/SeekBarPreference;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidx/preference/SeekBarPreference;->mTrackingTouch:Z

    invoke-static {v0}, Landroidx/preference/SeekBarPreference;->access$100(Landroidx/preference/SeekBarPreference;)Landroidx/preference/SeekBarPreference$OnSeekBarPreferenceChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/preference/SeekBarPreference$1;->this$0:Landroidx/preference/SeekBarPreference;

    invoke-static {v0}, Landroidx/preference/SeekBarPreference;->access$100(Landroidx/preference/SeekBarPreference;)Landroidx/preference/SeekBarPreference$OnSeekBarPreferenceChangeListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroidx/preference/SeekBarPreference$OnSeekBarPreferenceChangeListener;->onStartTrackingTouch(Landroidx/appcompat/widget/SeslSeekBar;)V

    :cond_0
    return-void
.end method

.method public onStopTrackingTouch(Landroidx/appcompat/widget/SeslSeekBar;)V
    .locals 3

    iget-object v0, p0, Landroidx/preference/SeekBarPreference$1;->this$0:Landroidx/preference/SeekBarPreference;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/preference/SeekBarPreference;->mTrackingTouch:Z

    invoke-virtual {p1}, Landroidx/appcompat/widget/SeslAbsSeekBar;->getProgress()I

    move-result v0

    iget-object v1, p0, Landroidx/preference/SeekBarPreference$1;->this$0:Landroidx/preference/SeekBarPreference;

    iget v2, v1, Landroidx/preference/SeekBarPreference;->mMin:I

    add-int/2addr v0, v2

    iget v2, v1, Landroidx/preference/SeekBarPreference;->mSeekBarValue:I

    if-eq v0, v2, :cond_0

    invoke-static {v1, p1}, Landroidx/preference/SeekBarPreference;->access$000(Landroidx/preference/SeekBarPreference;Landroidx/appcompat/widget/SeslSeekBar;)V

    :cond_0
    iget-object v0, p0, Landroidx/preference/SeekBarPreference$1;->this$0:Landroidx/preference/SeekBarPreference;

    invoke-static {v0}, Landroidx/preference/SeekBarPreference;->access$100(Landroidx/preference/SeekBarPreference;)Landroidx/preference/SeekBarPreference$OnSeekBarPreferenceChangeListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/preference/SeekBarPreference$1;->this$0:Landroidx/preference/SeekBarPreference;

    invoke-static {v0}, Landroidx/preference/SeekBarPreference;->access$100(Landroidx/preference/SeekBarPreference;)Landroidx/preference/SeekBarPreference$OnSeekBarPreferenceChangeListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroidx/preference/SeekBarPreference$OnSeekBarPreferenceChangeListener;->onStopTrackingTouch(Landroidx/appcompat/widget/SeslSeekBar;)V

    :cond_1
    return-void
.end method
