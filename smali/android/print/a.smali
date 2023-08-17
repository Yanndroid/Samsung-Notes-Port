.class public final synthetic Landroid/print/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/CancellationSignal$OnCancelListener;


# instance fields
.field public final synthetic a:Landroid/os/CancellationSignal;

.field public final synthetic b:Landroid/print/PdfPrint$CallBack;


# direct methods
.method public synthetic constructor <init>(Landroid/os/CancellationSignal;Landroid/print/PdfPrint$CallBack;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/print/a;->a:Landroid/os/CancellationSignal;

    iput-object p2, p0, Landroid/print/a;->b:Landroid/print/PdfPrint$CallBack;

    return-void
.end method


# virtual methods
.method public final onCancel()V
    .locals 2

    iget-object v0, p0, Landroid/print/a;->a:Landroid/os/CancellationSignal;

    iget-object v1, p0, Landroid/print/a;->b:Landroid/print/PdfPrint$CallBack;

    invoke-static {v0, v1}, Landroid/print/PdfPrint;->a(Landroid/os/CancellationSignal;Landroid/print/PdfPrint$CallBack;)V

    return-void
.end method
