.class Landroidx/appcompat/widget/SwitchCompat$ThumbAnimation;
.super Landroid/view/animation/Animation;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/SwitchCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ThumbAnimation"
.end annotation


# instance fields
.field public final mDiff:F

.field public final mEndPosition:F

.field public final mStartPosition:F

.field public final synthetic this$0:Landroidx/appcompat/widget/SwitchCompat;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/SwitchCompat;FF)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/widget/SwitchCompat$ThumbAnimation;->this$0:Landroidx/appcompat/widget/SwitchCompat;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    iput p2, p0, Landroidx/appcompat/widget/SwitchCompat$ThumbAnimation;->mStartPosition:F

    iput p3, p0, Landroidx/appcompat/widget/SwitchCompat$ThumbAnimation;->mEndPosition:F

    sub-float/2addr p3, p2

    iput p3, p0, Landroidx/appcompat/widget/SwitchCompat$ThumbAnimation;->mDiff:F

    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 2

    iget-object p2, p0, Landroidx/appcompat/widget/SwitchCompat$ThumbAnimation;->this$0:Landroidx/appcompat/widget/SwitchCompat;

    iget v0, p0, Landroidx/appcompat/widget/SwitchCompat$ThumbAnimation;->mStartPosition:F

    iget v1, p0, Landroidx/appcompat/widget/SwitchCompat$ThumbAnimation;->mDiff:F

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/SwitchCompat;->setThumbPosition(F)V

    return-void
.end method
