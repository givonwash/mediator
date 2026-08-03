{
  globals.mapleader = " ";
  keymaps = [
    # === INSERT mode ===
    { mode = "i"; key = "jj"; action = "<ESC>"; }

    # === NORMAL mode ===
    { mode = "n"; key = "<M-h>"; action = "<CMD>wincmd h<CR>"; }
    { mode = "n"; key = "<M-j>"; action = "<CMD>wincmd j<CR>"; }
    { mode = "n"; key = "<M-k>"; action = "<CMD>wincmd k<CR>"; }
    { mode = "n"; key = "<M-l>"; action = "<CMD>wincmd l<CR>"; }
    { mode = "n"; key = "<S-M-h>"; action = "<CMD>wincmd H<CR>"; }
    { mode = "n"; key = "<S-M-j>"; action = "<CMD>wincmd J<CR>"; }
    { mode = "n"; key = "<S-M-k>"; action = "<CMD>wincmd K<CR>"; }
    { mode = "n"; key = "<S-M-l>"; action = "<CMD>wincmd L<CR>"; }
    { mode = "n"; key = "<LEADER>o"; action = "<CMD>only<CR>"; }
    { mode = "n"; key = "<LEADER>c"; action = "<CMD>close<CR>"; }
    { mode = "n"; key = "<C-M-h>"; action = "<CMD>lua require('smart-splits').resize_left()<CR>"; }
    { mode = "n"; key = "<C-M-j>"; action = "<CMD>lua require('smart-splits').resize_down()<CR>"; }
    { mode = "n"; key = "<C-M-k>"; action = "<CMD>lua require('smart-splits').resize_up()<CR>"; }
    { mode = "n"; key = "<C-M-l>"; action = "<CMD>lua require('smart-splits').resize_right()<CR>"; }
    { mode = "n"; key = "<LEADER>Wh"; action = "<CMD>lua require('smart-splits').resize_left()<CR>"; options = { desc = "left"; }; }
    { mode = "n"; key = "<LEADER>Wj"; action = "<CMD>lua require('smart-splits').resize_down()<CR>"; options = { desc = "down"; }; }
    { mode = "n"; key = "<LEADER>Wk"; action = "<CMD>lua require('smart-splits').resize_up()<CR>"; options = { desc = "up"; }; }
    { mode = "n"; key = "<LEADER>Wl"; action = "<CMD>lua require('smart-splits').resize_right()<CR>"; options = { desc = "right"; }; }
    { mode = "n"; key = "<LEADER>W="; action = "<CMD>wincmd =<CR>"; options = { desc = "equalize"; }; }
    { mode = "n"; key = "<LEADER>w"; action = "<CMD>lua require('which-key').show({ keys = '<LEADER>W', loop = true })<CR>"; options = { desc = "resize window mode"; }; }
    { mode = "n"; key = "<LEADER>="; action = "<CMD>wincmd =<CR>"; }
    { mode = "n"; key = "<C-n>"; action = "<CMD>cnext<CR>"; }
    { mode = "n"; key = "<C-p>"; action = "<CMD>cprev<CR>"; }
    { mode = "n"; key = "<M-n>"; action = "<CMD>lnext<CR>"; }
    { mode = "n"; key = "<M-p>"; action = "<CMD>lprev<CR>"; }
    { mode = "n"; key = "oo"; action = "m`o<esc>``"; }
    { mode = "n"; key = "OO"; action = "m`O<esc>``"; }
    { mode = "n"; key = "?"; action = "?\\v"; options = { silent = false; desc = "TODO"; }; }
    { mode = "n"; key = "/"; action = "/\\v"; options = { silent = false; desc = "TODO"; }; }
    { mode = "n"; key = "<LEADER><LEADER>"; action = ":%s:\\v::g<LEFT><LEFT><LEFT>"; options = { silent = false; desc = "TODO"; }; }
    { mode = "n"; key = "<LEADER>;"; action = ":s:\\v::g<LEFT><LEFT><LEFT>"; options = { silent = false; desc = "TODO"; }; }
    { mode = "n"; key = "<LEADER>'"; action = ":.,$s:\\v::g<LEFT><LEFT><LEFT>"; options = { silent = false; desc = "TODO"; }; }
    { mode = "n"; key = "<LEADER>k"; action = ":%s:\\v<<C-r><C-w>>::g<LEFT><LEFT>"; options = { silent = false; desc = "TODO"; }; }
    { mode = "n"; key = "<LEADER>g"; action = ":%g:\\v"; options = { silent = false; desc = "TODO"; }; }
    { mode = "n"; key = "<LEADER>s"; action = "<CMD>setlocal spell!<CR>"; }
    { mode = "n"; key = "<LEADER>h"; action = "<CMD>nohlsearch<CR>"; }
    { mode = "n"; key = "<LEADER>r"; action = "<CMD>set relativenumber!<CR>"; }
    { mode = [ "n" "v" ]; key = "j"; action = "gj"; }
    { mode = [ "n" "v" ]; key = "k"; action = "gk"; }
    { mode = [ "n" "v" ]; key = "zl"; action = "zL"; }
    { mode = [ "n" "v" ]; key = "zh"; action = "zH"; }
    { mode = [ "n" "v" ]; key = "<LEADER>y"; action = "\"+y"; options = { silent = true; desc = "TODO"; }; }
    { mode = [ "n" "v" ]; key = "<LEADER>p"; action = "\"+p"; options = { silent = true; desc = "TODO"; }; }

    # === TERMINAL mode ===
    { mode = "t"; key = "jj"; action = "<C-\\><C-N>"; }
    { mode = "t"; key = "<M-h>"; action = "<C-\\><C-N><CMD>wincmd h<CR>"; }
    { mode = "t"; key = "<M-j>"; action = "<C-\\><C-N><CMD>wincmd j<CR>"; }
    { mode = "t"; key = "<M-k>"; action = "<C-\\><C-N><CMD>wincmd k<CR>"; }
    { mode = "t"; key = "<M-l>"; action = "<C-\\><C-N><CMD>wincmd l<CR>"; }
    { mode = "t"; key = "<S-M-h>"; action = "<C-\\><C-N><CMD>wincmd H<CR>"; }
    { mode = "t"; key = "<S-M-j>"; action = "<C-\\><C-N><CMD>wincmd J<CR>"; }
    { mode = "t"; key = "<S-M-k>"; action = "<C-\\><C-N><CMD>wincmd K<CR>"; }
    { mode = "t"; key = "<S-M-l>"; action = "<C-\\><C-N><CMD>wincmd L<CR>"; }
    { mode = "t"; key = "<C-M-h>"; action = "<CMD>lua require('smart-splits').resize_left()<CR>"; }
    { mode = "t"; key = "<C-M-j>"; action = "<CMD>lua require('smart-splits').resize_down()<CR>"; }
    { mode = "t"; key = "<C-M-k>"; action = "<CMD>lua require('smart-splits').resize_up()<CR>"; }
    { mode = "t"; key = "<C-M-l>"; action = "<CMD>lua require('smart-splits').resize_right()<CR>"; }
  ];
}
