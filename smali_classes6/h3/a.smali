.class public final synthetic Lh3/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/samsung/android/app/sdk/deepsky/feedback/FeedbackRequest;

.field public final synthetic b:I

.field public final synthetic c:Landroid/content/ComponentName;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/sdk/deepsky/feedback/FeedbackRequest;ILandroid/content/ComponentName;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh3/a;->a:Lcom/samsung/android/app/sdk/deepsky/feedback/FeedbackRequest;

    iput p2, p0, Lh3/a;->b:I

    iput-object p3, p0, Lh3/a;->c:Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lh3/a;->a:Lcom/samsung/android/app/sdk/deepsky/feedback/FeedbackRequest;

    iget v1, p0, Lh3/a;->b:I

    iget-object v2, p0, Lh3/a;->c:Landroid/content/ComponentName;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/sdk/deepsky/feedback/FeedbackRequest;->b(Lcom/samsung/android/app/sdk/deepsky/feedback/FeedbackRequest;ILandroid/content/ComponentName;)V

    return-void
.end method
