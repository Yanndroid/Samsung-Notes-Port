.class public final synthetic Lh3/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/samsung/android/app/sdk/deepsky/feedback/FeedbackRequest;

.field public final synthetic b:Landroid/content/ComponentName;

.field public final synthetic c:Lcom/samsung/android/app/sdk/deepsky/contract/feedback/FeedbackType;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/sdk/deepsky/feedback/FeedbackRequest;Landroid/content/ComponentName;Lcom/samsung/android/app/sdk/deepsky/contract/feedback/FeedbackType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh3/b;->a:Lcom/samsung/android/app/sdk/deepsky/feedback/FeedbackRequest;

    iput-object p2, p0, Lh3/b;->b:Landroid/content/ComponentName;

    iput-object p3, p0, Lh3/b;->c:Lcom/samsung/android/app/sdk/deepsky/contract/feedback/FeedbackType;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lh3/b;->a:Lcom/samsung/android/app/sdk/deepsky/feedback/FeedbackRequest;

    iget-object v1, p0, Lh3/b;->b:Landroid/content/ComponentName;

    iget-object v2, p0, Lh3/b;->c:Lcom/samsung/android/app/sdk/deepsky/contract/feedback/FeedbackType;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/sdk/deepsky/feedback/FeedbackRequest;->a(Lcom/samsung/android/app/sdk/deepsky/feedback/FeedbackRequest;Landroid/content/ComponentName;Lcom/samsung/android/app/sdk/deepsky/contract/feedback/FeedbackType;)V

    return-void
.end method
