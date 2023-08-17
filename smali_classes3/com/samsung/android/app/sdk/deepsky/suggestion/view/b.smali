.class public final synthetic Lcom/samsung/android/app/sdk/deepsky/suggestion/view/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterLocalImpl;

.field public final synthetic b:Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/SuggestionData;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterLocalImpl;Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/SuggestionData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/b;->a:Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterLocalImpl;

    iput-object p2, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/b;->b:Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/SuggestionData;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/b;->a:Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterLocalImpl;

    iget-object v1, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/b;->b:Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/SuggestionData;

    invoke-static {v0, v1, p1}, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterLocalImpl;->a(Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterLocalImpl;Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/SuggestionData;Landroid/view/View;)V

    return-void
.end method
