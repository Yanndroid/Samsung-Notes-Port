.class public interface abstract Lcom/sec/android/diagmonagent/sa/IDMAInterface;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/diagmonagent/sa/IDMAInterface$Stub;,
        Lcom/sec/android/diagmonagent/sa/IDMAInterface$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.sec.android.diagmonagent.sa.IDMAInterface"


# virtual methods
.method public abstract checkToken()Ljava/lang/String;
.end method

.method public abstract sendCommon(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract sendLog(ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;)I
.end method
