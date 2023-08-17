.class public final synthetic Lcom/samsung/android/sdk/pen/widget/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/pen/text/SpenInputManager$InputManagerActionListener;


# instance fields
.field public final synthetic a:Lcom/samsung/android/sdk/pen/widget/SpenTextManager;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/sdk/pen/widget/SpenTextManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/widget/a;->a:Lcom/samsung/android/sdk/pen/widget/SpenTextManager;

    return-void
.end method


# virtual methods
.method public final onCommitContent(Landroidx/core/view/inputmethod/InputContentInfoCompat;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/widget/a;->a:Lcom/samsung/android/sdk/pen/widget/SpenTextManager;

    invoke-static {v0, p1}, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->a(Lcom/samsung/android/sdk/pen/widget/SpenTextManager;Landroidx/core/view/inputmethod/InputContentInfoCompat;)V

    return-void
.end method
