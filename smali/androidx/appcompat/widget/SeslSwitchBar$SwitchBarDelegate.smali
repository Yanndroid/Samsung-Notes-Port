.class Landroidx/appcompat/widget/SeslSwitchBar$SwitchBarDelegate;
.super Landroidx/core/view/AccessibilityDelegateCompat;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/SeslSwitchBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SwitchBarDelegate"
.end annotation


# instance fields
.field private mSessionName:Ljava/lang/String;

.field private mSwitch:Landroidx/appcompat/widget/SeslToggleSwitch;

.field private mText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Landroidx/core/view/AccessibilityDelegateCompat;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Landroidx/appcompat/widget/SeslSwitchBar$SwitchBarDelegate;->mSessionName:Ljava/lang/String;

    sget v0, Landroidx/appcompat/R$id;->sesl_switchbar_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroidx/appcompat/widget/SeslSwitchBar$SwitchBarDelegate;->mText:Landroid/widget/TextView;

    sget v0, Landroidx/appcompat/R$id;->sesl_switchbar_switch:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/SeslToggleSwitch;

    iput-object p1, p0, Landroidx/appcompat/widget/SeslSwitchBar$SwitchBarDelegate;->mSwitch:Landroidx/appcompat/widget/SeslToggleSwitch;

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroidx/core/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    iget-object p1, p0, Landroidx/appcompat/widget/SeslSwitchBar$SwitchBarDelegate;->mSwitch:Landroidx/appcompat/widget/SeslToggleSwitch;

    iget-object v0, p0, Landroidx/appcompat/widget/SeslSwitchBar$SwitchBarDelegate;->mText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Landroidx/appcompat/widget/SeslSwitchBar$SwitchBarDelegate;->mSessionName:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Landroidx/appcompat/widget/SeslSwitchBar$SwitchBarDelegate;->mSessionName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setSessionName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/widget/SeslSwitchBar$SwitchBarDelegate;->mSessionName:Ljava/lang/String;

    return-void
.end method
