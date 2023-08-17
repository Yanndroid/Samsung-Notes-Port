.class public final synthetic Lcom/samsung/android/sdk/pen/text/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field public final synthetic a:Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/text/a;->a:Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup;

    return-void
.end method


# virtual methods
.method public final onDismiss()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/text/a;->a:Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup;->a(Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup;)V

    return-void
.end method
