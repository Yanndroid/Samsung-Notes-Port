.class public final synthetic Lcom/samsung/android/app/sdk/deepsky/suggestion/view/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView;

.field public final synthetic b:Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfig;

.field public final synthetic c:Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdater;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView;Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfig;Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdater;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/a;->a:Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView;

    iput-object p2, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/a;->b:Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfig;

    iput-object p3, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/a;->c:Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdater;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/a;->a:Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView;

    iget-object v1, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/a;->b:Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfig;

    iget-object v2, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/a;->c:Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdater;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView;->a(Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView;Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfig;Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdater;)V

    return-void
.end method
