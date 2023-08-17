.class Lcom/samsung/android/app/notes/widget/WidgetProvider$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/notes/widget/WidgetProvider;->onAppWidgetOptionsChanged(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;ILandroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/app/notes/widget/WidgetProvider;

.field public final synthetic val$appWidgetId:I

.field public final synthetic val$context:Landroid/content/Context;

.field public final synthetic val$listViewId:I

.field public final synthetic val$uuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/notes/widget/WidgetProvider;Landroid/content/Context;ILjava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/widget/WidgetProvider$1;->this$0:Lcom/samsung/android/app/notes/widget/WidgetProvider;

    iput-object p2, p0, Lcom/samsung/android/app/notes/widget/WidgetProvider$1;->val$context:Landroid/content/Context;

    iput p3, p0, Lcom/samsung/android/app/notes/widget/WidgetProvider$1;->val$appWidgetId:I

    iput-object p4, p0, Lcom/samsung/android/app/notes/widget/WidgetProvider$1;->val$uuid:Ljava/lang/String;

    iput p5, p0, Lcom/samsung/android/app/notes/widget/WidgetProvider$1;->val$listViewId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/WidgetProvider$1;->this$0:Lcom/samsung/android/app/notes/widget/WidgetProvider;

    iget-object v1, p0, Lcom/samsung/android/app/notes/widget/WidgetProvider$1;->val$context:Landroid/content/Context;

    iget v2, p0, Lcom/samsung/android/app/notes/widget/WidgetProvider$1;->val$appWidgetId:I

    iget-object v3, p0, Lcom/samsung/android/app/notes/widget/WidgetProvider$1;->val$uuid:Ljava/lang/String;

    iget v4, p0, Lcom/samsung/android/app/notes/widget/WidgetProvider$1;->val$listViewId:I

    const-string v5, "onAppWidgetOptionsChanged. updateAppWidget post"

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/notes/widget/NotesWidgetProvider;->updateAppWidgetAndNotify(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;)V

    return-void
.end method
