.class public final synthetic Landroidx/appcompat/widget/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic a:Landroidx/appcompat/widget/TooltipCompatHandler;

.field public final synthetic b:Landroid/content/res/Resources;


# direct methods
.method public synthetic constructor <init>(Landroidx/appcompat/widget/TooltipCompatHandler;Landroid/content/res/Resources;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/widget/d;->a:Landroidx/appcompat/widget/TooltipCompatHandler;

    iput-object p2, p0, Landroidx/appcompat/widget/d;->b:Landroid/content/res/Resources;

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 12

    move-object v0, p0

    iget-object v1, v0, Landroidx/appcompat/widget/d;->a:Landroidx/appcompat/widget/TooltipCompatHandler;

    iget-object v2, v0, Landroidx/appcompat/widget/d;->b:Landroid/content/res/Resources;

    move-object v3, p1

    move v4, p2

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    invoke-static/range {v1 .. v11}, Landroidx/appcompat/widget/TooltipCompatHandler;->a(Landroidx/appcompat/widget/TooltipCompatHandler;Landroid/content/res/Resources;Landroid/view/View;IIIIIIII)V

    return-void
.end method
