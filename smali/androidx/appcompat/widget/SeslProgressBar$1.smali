.class Landroidx/appcompat/widget/SeslProgressBar$1;
.super Landroid/util/FloatProperty;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/SeslProgressBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/FloatProperty<",
        "Landroidx/appcompat/widget/SeslProgressBar;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Landroidx/appcompat/widget/SeslProgressBar;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/SeslProgressBar;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/widget/SeslProgressBar$1;->this$0:Landroidx/appcompat/widget/SeslProgressBar;

    invoke-direct {p0, p2}, Landroid/util/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Landroidx/appcompat/widget/SeslProgressBar;)Ljava/lang/Float;
    .locals 0

    invoke-static {p1}, Landroidx/appcompat/widget/SeslProgressBar;->access$800(Landroidx/appcompat/widget/SeslProgressBar;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/appcompat/widget/SeslProgressBar;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SeslProgressBar$1;->get(Landroidx/appcompat/widget/SeslProgressBar;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public setValue(Landroidx/appcompat/widget/SeslProgressBar;F)V
    .locals 1

    const v0, 0x102000d

    invoke-static {p1, v0, p2}, Landroidx/appcompat/widget/SeslProgressBar;->access$700(Landroidx/appcompat/widget/SeslProgressBar;IF)V

    invoke-static {p1, p2}, Landroidx/appcompat/widget/SeslProgressBar;->access$802(Landroidx/appcompat/widget/SeslProgressBar;F)F

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    check-cast p1, Landroidx/appcompat/widget/SeslProgressBar;

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/widget/SeslProgressBar$1;->setValue(Landroidx/appcompat/widget/SeslProgressBar;F)V

    return-void
.end method
