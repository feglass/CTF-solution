.class Lcom/example/simpleencryption/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/simpleencryption/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/simpleencryption/MainActivity;

.field private final synthetic val$edit:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/example/simpleencryption/MainActivity;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/example/simpleencryption/MainActivity$1;->this$0:Lcom/example/simpleencryption/MainActivity;

    iput-object p2, p0, Lcom/example/simpleencryption/MainActivity$1;->val$edit:Landroid/widget/EditText;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 32
    iget-object v6, p0, Lcom/example/simpleencryption/MainActivity$1;->val$edit:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    .line 33
    .local v3, "password":Ljava/lang/String;
    iget-object v6, p0, Lcom/example/simpleencryption/MainActivity$1;->this$0:Lcom/example/simpleencryption/MainActivity;

    invoke-virtual {v6}, Lcom/example/simpleencryption/MainActivity;->getTableFromPic()Ljava/lang/String;

    move-result-object v5

    .line 34
    .local v5, "table":Ljava/lang/String;
    iget-object v6, p0, Lcom/example/simpleencryption/MainActivity$1;->this$0:Lcom/example/simpleencryption/MainActivity;

    invoke-virtual {v6}, Lcom/example/simpleencryption/MainActivity;->getPwdFromPic()Ljava/lang/String;

    move-result-object v4

    .line 36
    .local v4, "pw":Ljava/lang/String;
    const-string v6, "lil"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "table:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    const-string v6, "lil"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "pw:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    const-string v2, ""

    .line 48
    .local v2, "enPassword":Ljava/lang/String;
    :try_start_0
    const-string v6, "utf-8"

    invoke-virtual {v3, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    # invokes: Lcom/example/simpleencryption/MainActivity;->bytesToAliSmsCode(Ljava/lang/String;[B)Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/example/simpleencryption/MainActivity;->access$0(Ljava/lang/String;[B)Ljava/lang/String;
    
    move-result-object v2
	
	
	
	.local v9, "b":[B
    new-instance v10, Ljava/lang/String;
	invoke-static {v5, v4}, Lcom/example/simpleencryption/MainActivity;->aliCodeToBytes(Ljava/lang/String;Ljava/lang/String;)[B
	move-result-object v9
	invoke-direct {v10, v9}, Ljava/lang/String;-><init>([B)V

	
	
    .line 49
    const-string v6, "lil"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "enPassword:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    :goto_0
    if-eqz v4, :cond_0

    const-string v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 55
    iget-object v6, p0, Lcom/example/simpleencryption/MainActivity$1;->this$0:Lcom/example/simpleencryption/MainActivity;

    # invokes: Lcom/example/simpleencryption/MainActivity;->showDialog()V
    invoke-static {v6}, Lcom/example/simpleencryption/MainActivity;->access$1(Lcom/example/simpleencryption/MainActivity;)V

    .line 69
    :goto_1
    return-void

    .line 50
    :catch_0
    move-exception v1

    .line 51
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 57
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/example/simpleencryption/MainActivity$1;->this$0:Lcom/example/simpleencryption/MainActivity;

    invoke-direct {v0, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 58
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v6, 0x7f0a0011

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 59
    const v6, 0x7f0a0010

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 60
    const v6, 0x7f0a0013

    .line 61
    new-instance v7, Lcom/example/simpleencryption/MainActivity$1$1;

    invoke-direct {v7, p0}, Lcom/example/simpleencryption/MainActivity$1$1;-><init>(Lcom/example/simpleencryption/MainActivity$1;)V

    .line 60
    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 67
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_1
.end method
