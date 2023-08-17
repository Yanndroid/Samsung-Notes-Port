.class public final synthetic Li3/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/samsung/android/app/sdk/deepsky/smartwidget/SmartWidgetImpl;

.field public final synthetic b:Lcom/samsung/android/app/sdk/deepsky/donation/WidgetContribution;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/sdk/deepsky/smartwidget/SmartWidgetImpl;Lcom/samsung/android/app/sdk/deepsky/donation/WidgetContribution;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li3/a;->a:Lcom/samsung/android/app/sdk/deepsky/smartwidget/SmartWidgetImpl;

    iput-object p2, p0, Li3/a;->b:Lcom/samsung/android/app/sdk/deepsky/donation/WidgetContribution;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Li3/a;->a:Lcom/samsung/android/app/sdk/deepsky/smartwidget/SmartWidgetImpl;

    iget-object v1, p0, Li3/a;->b:Lcom/samsung/android/app/sdk/deepsky/donation/WidgetContribution;

    invoke-static {v0, v1}, Lcom/samsung/android/app/sdk/deepsky/smartwidget/SmartWidgetImpl;->a(Lcom/samsung/android/app/sdk/deepsky/smartwidget/SmartWidgetImpl;Lcom/samsung/android/app/sdk/deepsky/donation/WidgetContribution;)V

    return-void
.end method
